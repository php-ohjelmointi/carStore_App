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


   //Counting cours
   $sql_countCars = "SELECT count(Row_ID) AS numberOFCars FROM cars";
   $countCars = mysqli_query($conn,$sql_countCars);

   if ($countCars->num_rows > 0) {
        // output data of each row
        while($row = $countCars->fetch_assoc()) {
            $CarsNumber = $row["numberOFCars"];
        }
    } else {

    }   

    //Counting stores
   $sql_countStores = "SELECT count(Store_ID) AS numberOFstores FROM stores";
   $countStores = mysqli_query($conn,$sql_countStores);

   if ($countStores->num_rows > 0) {
        // output data of each row
        while($row = $countStores->fetch_assoc()) {
            $StoresNumber = $row["numberOFstores"];
        }
    } else {

    } 

    //Counting customers
   $sql_countcustomers = "SELECT count(Customer_ID ) AS numberOFcustomers FROM customers";
   $countCustomer = mysqli_query($conn,$sql_countcustomers);

   if ($countCustomer->num_rows > 0) {
        // output data of each row
        while($row = $countCustomer->fetch_assoc()) {
            $CustomerNumber = $row["numberOFcustomers"];
        }
    } else {

    } 

      //Counting employees
   $sql_countemployees = "SELECT count(Emp_ID) AS numberOFEmployee  FROM employees";
   $countEmployees= mysqli_query($conn,$sql_countemployees);

   if ($countEmployees->num_rows > 0) {
        // output data of each row
        while($row = $countEmployees->fetch_assoc()) {
            $EmployeeNumber = $row["numberOFEmployee"];
        }
    } else {

    } 


       //Counting credentials
   $sql_countCredentials= "SELECT count(Credentials_ID ) AS numberOFCredentials_ID  FROM credentials";
   $countCredentials= mysqli_query($conn,$sql_countCredentials);

   if ($countCredentials->num_rows > 0) {
        // output data of each row
        while($row = $countCredentials->fetch_assoc()) {
            $CredentialsNumber = $row["numberOFCredentials_ID"];
        }
    } else {

    } 


?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CARS</title>
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
    .card{
        display: inline-grid;
        grid-template-columns: auto auto auto auto auto;
        margin-left:5em;
    }
    .well{
        width:30em !important;
        margin-left:2em;
        display:table;
    }
    p{
        font-size:24px;
    }
    .btn{
        font-size:20px;
    }

    span{
        font-size:30px;
        font-weight:bold;
        float:right;
        margin-right:15px;
    }

    button{
        width:255px;
        margin-left:50px;
    }

</style>
<body>
<br /><br />
<div class="card">
    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Cars</h1>
        <br />
        <p>Cars (TOTAL): <span><?php echo $CarsNumber; ?></span></p><br /><br />
        <a href="addnewcar.php"><button type="button" class="btn btn-success ">Add new car</button></a>
        <br /><br />
        <a href="All_cars.php"><button type="button" class="btn btn-primary">All cars</button></a>
        <br /><br />
        <a href="addshow_features.php"><button type="button" class="btn btn-warning ">Add/ Show Features</button></a>
        <br /><br />
        <a href="addnewfeatureFOR_CAR.php"><button type="button" class="btn btn-warning">ADD/Show feature for car</button></a>
        <br /><br />
        <a href="All_CarsByFeatures.php"><button type="button" class="btn btn-primary">All cars by Feature</button></a>
        <br /><br />
        <a href="addCarImages.php"><button type="button" class="btn btn-success">ADD car images</button></a>
        <br /><br />
        <a href="All_CarsByStores.php"><button type="button" class="btn btn-primary">cars by stores</button></a>
        <br /><br />
        <a href="All_CarsByBranches.php"><button type="button" class="btn btn-primary">cars by Branch</button></a>
        
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Stores</h1>
        <br />
        <p>Stores (TOTAL): <span><?php echo $StoresNumber; ?></span></p>
        <br /><br />
        <a href="addnewbranch.php"> <button type="button" class="btn btn-success ">Add new branch</button></a>
        <br /><br />
        <a href="addnewstore.php"> <button type="button" class="btn btn-success ">Add new store</button></a>
        <br /><br />
        <a href="All_stores.php"><button type="button" class="btn btn-primary">All stores</button></a>
        <br /><br />
        <a href="All_branches.php"><button type="button" class="btn btn-primary">All branches</button></a>
        <br /><br />
        <a href="All_StoresByBranches.php"><button type="button" class="btn btn-primary">Number store by Branch</button></a>
       
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Customers</h1>
        <br />
        <p>Customers (TOTAL): <span><?php echo $CustomerNumber; ?></span></p>
        <br /><br />
        <a href="addnewcustomer.php"> <button type="button" class="btn btn-success ">Add new customer</button></a>
        <br /><br />
        <a href="All_customer.php"><button type="button" class="btn btn-primary">All customers</button></a>
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Employees</h1>
        <br />
        <p>Employees (TOTAL): <span><?php echo $EmployeeNumber; ?></span></p>
        <br /><br />

            <a href="addnewemployee.php"> <button type="button" class="btn btn-success ">Add new employee</button></a>
            <br /><br />
            <a href="addworkingplace.php"> <button type="button" class="btn btn-success ">Add working place</button></a>
            <br /><br />
            <a href="addworkingtitle.php"> <button type="button" class="btn btn-success ">Add working title</button></a>
            <br /><br />
            <a href="addsalary.php"> <button type="button" class="btn btn-success ">Add salary</button></a>
            <br /><br />
            <a href="All_employees.php"><button type="button" class="btn btn-primary">All employees</button></a>
            <br /><br />
            <a href="All_Tiitles_Salaries.php"><button type="button" class="btn btn-primary">Al Titles and salaries</button></a>
            <br /><br />
            <a href="show_emp_service_language.php"><button type="button" class="btn btn-warning">ADD/show service Lang.</button></a>
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Credentials</h1>
        <p>Credentials (TOTAL): <span><?php echo $CredentialsNumber; ?></span></p><br />
        <br /><br />
        <a href="All_credentials.php"><button type="button" class="btn btn-primary">Show All credentials</button></a>
        <br /><br />
        <a href="addnewemployecredentials.php"> <button type="button" class="btn btn-success ">Add Employee credentials</button></a>
        <br /><br />
        <a href="addcustomercredentials.php"> <button type="button" class="btn btn-success ">Add Customer credentials</button></a>

    </div>

    
</div>
</html>