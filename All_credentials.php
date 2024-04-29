<?php 
   $host = 'localhost:3307';  
   $user = 'root';  
   $pass = 'test123'; 
   $db = "car_store"; 
   $conn = mysqli_connect($host, $user, $pass,$db);  
   if(! $conn )  
   {  
     die('Could not connect: ' . mysqli_error());  
   }  
   echo 'Connected successfully';  
   echo '<br />-------------------------------------------<br />'; 


  //SQL query get Customer credentials
  $GettingCustomerCredentials = "SELECT * FROM customer_credentials ORDER BY Date_OF_Add DESC";
  
  //SQL query get Employee credentials
  $GettingEmployeeCredentials = "SELECT * FROM employee_credentials ORDER BY Date_OF_Add DESC";

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
<br /><br />
<div class="headingtext">
  <h2>Customer<h2>
  <h2 style="margin-left:38.5em;">Employees<h2>
</div>

<!-- Customer-->
<div class="customerEmployeeCredentials">
  <table class="table table-striped">
      <thead>
      
        <tr>
          <th>Credentials_ID</th>
          <th>Name</th>
          <th>Username</th>
          <th>Password</th>
          <th>Date OF ADD</th>
        </tr>
      </thead>
      <tbody>
          <?php 
          $GettingCustomerCredentialsResult = $conn->query($GettingCustomerCredentials);
          if ($GettingCustomerCredentialsResult->num_rows > 0) {
              // output data of each row
              while($row = $GettingCustomerCredentialsResult->fetch_assoc()) {
                  $Credentials_ID = $row["Credentials_ID"];
                  $F_Name  = $row["F_Name"];
                  $L_Name  = $row["L_Name"];
                  $Username  = $row["Username"];
                  $Password  = $row["Password"];
                  $Date_OF_Add  = $row["Date_OF_Add"];
                  

                  echo "<tr>";
                  echo "<td>$Credentials_ID</td>";
                  echo "<td>$F_Name $L_Name</td>";
                  echo "<td> $Username</td>";
                  echo "<td> $Password</td>";
                  echo "<td> $Date_OF_Add</td>";
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
          <th>Credentials_ID</th>
          <th>Name</th>
          <th>Username</th>
          <th>Password</th>
          <th>Date OF ADD</th>
        </tr>
        </tr>
      </thead>
      <tbody>
          <?php 
          $GettingEmployeeCredentialsResult = $conn->query($GettingEmployeeCredentials);
          if ($GettingEmployeeCredentialsResult->num_rows > 0) {
              // output data of each row
              while($row = $GettingEmployeeCredentialsResult->fetch_assoc()) {
                $Credentials_ID = $row["Credentials_ID"];
                $F_Name  = $row["F_Name"];
                $L_Name  = $row["L_Name"];
                $Username  = $row["Username"];
                $Password  = $row["Password"];
                $Date_OF_Add  = $row["Date_OF_Add"];
                

                echo "<tr>";
                echo "<td>$Credentials_ID</td>";
                echo "<td>$F_Name $L_Name</td>";
                echo "<td> $Username</td>";
                echo "<td> $Password</td>";
                echo "<td> $Date_OF_Add</td>";
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