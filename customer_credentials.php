<?php 
  require 'db.php';

  //SQL query get Customer credentials
  $GettingCustomerCredentials = "SELECT * FROM customer_credentials ORDER BY Credentials_ID DESC";

  //SQL query get Customer credentials
  $GettingCustomerNumber = "SELECT count(Customer_ID) AS NUmberOFCustomer FROM credentials";
  $GettingCustomerNumber_query= mysqli_query($conn,$GettingCustomerNumber);

  if ($GettingCustomerNumber_query->num_rows > 0) {
      // output data of each row
      while($row = $GettingCustomerNumber_query->fetch_assoc()) {
          $CustomerNumber = $row["NUmberOFCustomer"];
      }
  } else 
  {

  } 

?>
  <script>
      // Your application has indicated there's an error
      window.setTimeout(function(){

      // Move to a new location or you can do something else
      location.href = "addcustomercredentials.php";

      },550); 
  </script>  
<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>CUSTOMER CREDENTIALS</title>
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
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
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

tbody {
  font-family: "Quicksand", sans-serif;
  font-optical-sizing: auto;
  font-weight: <weight>;
  font-style: normal;
}

</style>

<body>
<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addcustomercredentials.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW Customer credentials</button></a>
<a href="addnewemployeecredentials.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW Employee CREDENTIALS</button></a>
<br /><br />
<div class="headingtext">
  <h2>Customer, <?php echo $CustomerNumber; ?><h2>
</div>

<!-- Customer-->
<div class="customerEmployeeCredentials">
  <table class="table table-striped">
      <thead>
        <tr>
          <th>Credentials_ID</th>
          <th>Customer_ID</th>
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
                  $Customer_ID = $row["Customer_ID"];
                  $F_Name  = $row["F_Name"];
                  $L_Name  = $row["L_Name"];
                  $Username  = $row["Username"];
                  $Password  = $row["Password"];
                  $Date_OF_Add  = $row["Date_OF_Add"];
                  $Date_OF_Add_New = date("d.m.Y", strtotime($row['Date_OF_Add']));
                  
                  echo "<tr>";
                  echo "<td>$Credentials_ID</td>";
                  echo "<td>$Customer_ID</td>";
                  echo "<td>$F_Name <strong>".$L_Name."</strong></td>";
                  echo "<td> $Username</td>";
                  echo "<td> $Password</td>";
                  echo "<td> $Date_OF_Add_New</td>";
                  echo "</tr>";  
              }
          } else {
        
          }
          ?>
      </tbody>
    </table>
</div>
</html>