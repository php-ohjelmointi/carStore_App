<?php 
  require 'db.php';


  //SQL query get Customer credentials
  $GettingCustomerCredentials = "SELECT concat(CD.F_Name,' ',CD.L_Name) AS Fullname,count(CL.Row_ID) AS NOL,CD.Username,MAX(CL.Date) AS lastlogin
    FROM customer_credentials AS CD
        INNER JOIN credentials_logs AS CL ON CD.Credentials_ID = CL.Credentials_ID
        GROUP BY CL.Credentials_ID
    ORDER BY CL.Date DESC";
  
  //SQL query get Employee credentials
  $GettingEmployeeCredentials = "SELECT concat(EC.F_Name,' ',EC.L_Name) AS Fullname,count(CL.Row_ID) AS NOL,EC.Username,MAX(CL.Date) AS lastlogin
  FROM employee_credentials AS EC
      INNER JOIN credentials_logs AS CL ON EC.Credentials_ID = CL.Credentials_ID
      GROUP BY CL.Credentials_ID
  ORDER BY CL.Date DESC";

?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CREDENTIALS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Maven+Pro&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/761c60ba3b.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
  .customerEmployeeCredentials{
    display:flex;
    margin-top:5px;
  }

  table {
    width:10em;
    margin-left:20px;
    margin-right:20px;
  }
.headingtext{
  display:flex;
  margin-left:20px;
}

a button {
  text-transform:uppercase;
}

</style>

<body>
<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addcustomercredentials.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW Customer credentials</button></a>
<a href="addnewemployecredentials.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW Employee CREDENTIALS</button></a>
<a href="addcustomercredentialsLOG.php"><button type="button" class="btn btn-primary btn-xs">ADD Customer CREDENTIALS LOG</button></a>
<a href="addemployeecredentialsLOG.php"><button type="button" class="btn btn-primary btn-xs">ADD Employee CREDENTIALS LOG</button></a>
<br /><br />
<div class="headingtext">
  <h2>Customer logs<h2>
  <h2 style="margin-left:26em;">Employees logs<h2>
</div>

<!-- Customer-->
<div class="customerEmployeeCredentials">
  <table class="table table-striped">
      <thead>
      
        <tr>
          <th>Fullname</th>
          <th>Number OF attemps</th>
          <th>Username</th>
          <th>Last Login</th>
        </tr>
      </thead>
      <tbody>
          <?php 
          $GettingCustomerCredentialsResult = $conn->query($GettingCustomerCredentials);
          if ($GettingCustomerCredentialsResult->num_rows > 0) {
              // output data of each row
              while($row = $GettingCustomerCredentialsResult->fetch_assoc()) {
                $Fullname = $row["Fullname"];
                $Username  = $row["Username"];
                $Date_OF_LOGIN  = $row["lastlogin"];
                $Number_OF_LOGIN  = $row["NOL"];
                
                echo "<tr>";
                echo "<td>$Fullname</td>";
                echo "<td>($Number_OF_LOGIN)</td>";
                echo "<td> $Username</td>";
                echo "<td> $Date_OF_LOGIN</td>";
                echo "</tr>";
              }
          } else {
        
          }
          ?>
      </tbody>
    </table>

<!-- Employee-->
    <table class="table table-striped">
      <thead>
        <tr>
        <tr>
          <th>Fullname</th>
          <th>Number OF attemps</th>
          <th>Username</th>
          <th>Last Login</th>
        </tr>
        </tr>
      </thead>
      <tbody>
          <?php 
          $GettingEmployeeCredentialsResult = $conn->query($GettingEmployeeCredentials);
          if ($GettingEmployeeCredentialsResult->num_rows > 0) {
              // output data of each row
              while($row = $GettingEmployeeCredentialsResult->fetch_assoc()) {
                $Fullname = $row["Fullname"];
                $Username  = $row["Username"];
                $Date_OF_LOGIN  = $row["lastlogin"];
                $Number_OF_LOGIN  = $row["NOL"];
                
                echo "<tr>";
                echo "<td>$Fullname</td>";
                echo "<td>($Number_OF_LOGIN)</td>";
                echo "<td> $Username</td>";
                echo "<td> $Date_OF_LOGIN</td>";
                echo "</tr>";
                  
              }
          } else {
        
          }
          mysqli_close($conn);  
          ?>
      </tbody>
    </table>



</div>

</html>