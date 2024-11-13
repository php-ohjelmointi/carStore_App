<?php 
  require 'db.php';
  
   //Counting cours
   $sql_countCars = "SELECT count(Row_ID) AS numberOFCars FROM cars WHERE Number_Plate IS NOT NULL";
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
   $sql_countcustomers = "SELECT count(Customer_ID ) AS numberOFcustomers FROM customers WHERE SSN IS NOT NULL";
   $countCustomer = mysqli_query($conn,$sql_countcustomers);

   if ($countCustomer->num_rows > 0) {
        // output data of each row
        while($row = $countCustomer->fetch_assoc()) {
            $CustomerNumber = $row["numberOFcustomers"];
        }
    } else {

    } 


    //Counting customers --NO SSN
   $sql_countcustomers_NOTSSN = "SELECT count(Customer_ID) AS numberOFcustomers_No_SSN FROM customers WHERE SSN IS NULL";
   $countcustomers_NOTSSN = mysqli_query($conn,$sql_countcustomers_NOTSSN);

   if ($countcustomers_NOTSSN->num_rows > 0) {
        // output data of each row
        while($row = $countcustomers_NOTSSN->fetch_assoc()) {
            $CustomerNumber_NO_SSN = $row["numberOFcustomers_No_SSN"];
        }
    } else {

    } 

      //Counting employees
   $sql_countemployees = "SELECT count(Emp_ID) AS numberOFEmployee FROM employees WHERE SSN IS NOT NULL";
   $countEmployees= mysqli_query($conn,$sql_countemployees);

   if ($countEmployees->num_rows > 0) {
        // output data of each row
        while($row = $countEmployees->fetch_assoc()) {
            $EmployeeNumber = $row["numberOFEmployee"];
        }
    } else {

    } 

    //Counting employees --NO SSN
   $sql_countemployees_NOTSSN = "SELECT count(Emp_ID) AS numberOFemployees_No_SSN FROM employees WHERE SSN IS NULL";
   $countemployees_NOTSSN = mysqli_query($conn,$sql_countemployees_NOTSSN);

   if ($countemployees_NOTSSN->num_rows > 0) {
        // output data of each row
        while($row = $countemployees_NOTSSN->fetch_assoc()) {
            $EmployeeNumber_NO_SSN = $row["numberOFemployees_No_SSN"];
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


    //GET latest Customer
   $sql_GET_latest_Customer= "SELECT Customer_ID,SSN,concat(F_Name,' ',L_Name) AS CustomerName, Date_OF_Update FROM customers ORDER BY Date_OF_Update DESC LIMIT 1;";
   $Query_sql_GET_latest_Customer= mysqli_query($conn,$sql_GET_latest_Customer);

   if ($Query_sql_GET_latest_Customer->num_rows > 0) {
        // output data of each row
        while($row = $Query_sql_GET_latest_Customer->fetch_assoc()) {
            $Customer_ID_LastUpdate = $row["Customer_ID"];
            $SSN_LastUpdate = $row["SSN"];
            $Name_LastUpdate = $row["CustomerName"];
        }
    } else {

    } 


    
    //Counting cars --NO NumberPlate
   $sql_countCars_NO_NumberPlate = "SELECT count(VIN) AS numberOFCars_No_NumberPlate FROM cars WHERE Number_Plate IS NULL";
   $countCars_NO_NumberPlate = mysqli_query($conn,$sql_countCars_NO_NumberPlate);

   if ($countCars_NO_NumberPlate->num_rows > 0) {
        // output data of each row
        while($row = $countCars_NO_NumberPlate->fetch_assoc()) {
            $NumberOFCars_No_NumberPlate = $row["numberOFCars_No_NumberPlate"];
        }
    } else {

    } 


    ?>

 <script>
            
           /* // Your application has indicated there's an error
            window.setTimeout(function(){
            // Move to a new location or you can do something else
            location.href = "Customer_No_SSN_ALL.php";
            },300);  */

            /* // Your application has indicated there's an error
            window.setTimeout(function(){
            // Move to a new location or you can do something else
            location.href = "Cars_No_NumberPlate.php";
            },300);         */  

    </script> 

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>Main Page</title>
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
        grid-template-columns: auto auto auto auto;
        margin-left:2em;
    }
    .imagegrid{
        display: inline-grid;
        grid-template-columns: auto auto;
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
        font-size:20px;
        font-weight:bold;
        float:right;
        margin-right:15px;
    }

    button{
        width:170px;
        margin-left:15px;
    }

</style>
<body>
<br /><br />
<div class="card">
    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Cars</h1>
        <br />
        <p>Cars (TOTAL): <span><?php echo $CarsNumber; ?></span></p><br />
    <div class="imagegrid">
        <a href="addnewcar.php"><button type="button" class="btn btn-success ">+ new car</button></a>
        <a href="All_cars.php"><button type="button" class="btn btn-primary">All cars</button></a>
    </div>
        <br /><br />

    <div class="imagegrid">
        <a href="addshow_features.php"><button type="button" class="btn btn-warning ">A/S Features</button></a>
        <a href="addnewfeatureFOR_CAR.php"><button type="button" class="btn btn-warning">A/S car feat.</button></a>
    </div>
        <br /><br />

    <div class="imagegrid">
        <a href="All_CarsByFeatures.php"><button type="button" class="btn btn-primary">Cars By Feature</button></a>
        <a href="addCarImages.php"><button type="button" class="btn btn-success">+ car images</button></a>
    </div> 
        <br /><br />

    <div class="imagegrid">
        <a href="All_CarsByStores.php"><button type="button" class="btn btn-primary">cars by stores</button></a>
        <a href="All_CarsByBranches.php"><button type="button" class="btn btn-primary">cars by Branch</button></a>
    </div> 
    <br /><br />

    <div class="imagegrid">
        <a href="NumbersOFcarsImage.php"><button type="button" class="btn btn-primary"># of cars image</button></a>
    </div> 

    <h1 style="border-bottom:1px solid gray;"></h1>
    <p>No NumberPlate (TOTAL): <span><?php echo $NumberOFCars_No_NumberPlate; ?></span></p>
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Stores</h1>
        <br />
        <p>Stores (TOTAL): <span><?php echo $StoresNumber; ?></span></p>
        <br />
    <div class="imagegrid">
        <a href="addnewbranch.php"> <button type="button" class="btn btn-success ">+ branch</button></a>
        <a href="addnewstore.php"> <button type="button" class="btn btn-success ">+ store</button></a>
    </div> 
        <br /><br />
        <a href="addStoreImage.php"> <button type="button" class="btn btn-success ">+ store image</button></a>
        <a href="All_stores.php"><button type="button" class="btn btn-primary">All stores</button></a>
        <br /><br />
        <a href="All_branches.php"><button type="button" class="btn btn-primary">All branches</button></a>
        <a href="All_StoresByBranches.php"><button type="button" class="btn btn-primary">store by branch</button></a>
       
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Customers</h1>
        <br />
        <p>Customers (TOTAL): <span><?php echo $CustomerNumber; ?></span></p>
        <br />
        
        <div class="imagegrid">
            <a href="addnewcustomer.php"> <button type="button" class="btn btn-success ">+ customer</button></a>
            <a href="All_customer.php"><button type="button" class="btn btn-primary">All customers</button></a>
        </div>
        
        <br/><br/>
        
        <div class="imagegrid">
            <a href="addnewcustomer_car.php"> <button type="button" class="btn btn-success ">+ Customer cars</button></a>
            <a href="All_own_cust_cars.php"><button type="button" class="btn btn-primary">All own cars</button></a>
        </div>

        <h1 style="border-bottom:1px solid gray;"></h1>
        <br />      
        <p>No SSN (TOTAL):<span><?php echo $CustomerNumber_NO_SSN; ?></a></span></p>
        <p style="font-size:20px;"><?php echo $Customer_ID_LastUpdate."<br>".$SSN_LastUpdate."<br>".$Name_LastUpdate; ?></p>
        
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Employees</h1>
        <br />
        <p>Employees (TOTAL): <span><?php echo $EmployeeNumber; ?></span></p>
        <br />

        <div class="imagegrid">
            <a href="addnewemployee.php"> <button type="button" class="btn btn-success ">+ employee</button></a>
            <a href="addworkingplace.php"> <button type="button" class="btn btn-success ">+ working place</button></a>
        </div>
            <br /><br />

        <div class="imagegrid">
            <a href="addworkingtitle.php"> <button type="button" class="btn btn-success ">+ working title</button></a>
            <a href="addsalary.php"> <button type="button" class="btn btn-success ">+ salary</button></a>
        </div> 
            <br /><br />
        <div class="imagegrid">
            <a href="addempimage.php"> <button type="button" class="btn btn-success ">+ Image</button></a>
            <a href="All_employees.php"><button type="button" class="btn btn-primary">All employees</button></a>
        </div> 
            <br /><br />

        <div class="imagegrid">
            <a href="All_Tiitles_Salaries.php"><button type="button" class="btn btn-primary">Title and salary</button></a>
            <a href="show_emp_service_language.php"><button type="button" class="btn btn-warning">A/S serv. Lang.</button></a>
        </div> 
        <br /><br />
        
        <div class="imagegrid">
            <a href="All_WorkingPlace.php"><button type="button" class="btn btn-primary">Working places</button></a>
        </div> 

        <h1 style="border-bottom:1px solid gray;"></h1>
        <br />      
        <p>No SSN (TOTAL): <span><?php echo $EmployeeNumber_NO_SSN; ?></span></p>
        <br />
     
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Credentials</h1>
        <p>Credentials (TOTAL): <span><?php echo $CredentialsNumber; ?></span></p><br />
        <a href="employee_credentials.php"><button type="button" class="btn btn-primary">Emp. Credentials</button></a>
        <a href="customer_credentials.php"><button type="button" class="btn btn-primary">Cust. Credentials</button></a>
        <br /><br />

        <div class="imagegrid">
            <a href="employee_credentials_LOG.php"> <button type="button" class="btn btn-primary">EMP cred LOG.</button></a>
            <a href="customer_credentials_LOG.php"> <button type="button" class="btn btn-primary">Cust cred LOG.</button></a>
        </div>
        <br /><br />
        <div class="imagegrid">
            <a href="addnewemployecredentials.php"> <button type="button" class="btn btn-success ">+ Employee cred.</button></a>
            <a href="addcustomercredentials.php"> <button type="button" class="btn btn-success">+ Customer cred.</button></a>
        </div>
        <br /><br />

        <div class="imagegrid">
            <a href="addemployeecredentialsLOG.php"> <button type="button" class="btn btn-success ">+ EMP cred LOG</button></a>
            <a href="addcustomercredentialsLOG.php"> <button type="button" class="btn btn-success">+ Cust cred LOG</button></a>
        </div> 
    </div>

    <div class="well">
        <h1 style="border-bottom:1px solid gray;">Analytics</h1>
        <br />
        <a href="All_CarsByColor.php"><button type="button" class="btn btn-primary">CarsByColors</button></a>
        <a href="All_CarsByDrawmethod.php"><button type="button" class="btn btn-primary">CarsByD.Method</button></a>
        <br /><br />

        <div class="imagegrid">
            <a href="All_CarsByGearbox.php"> <button type="button" class="btn btn-primary ">CarsByGearbox</button></a>
            <a href="All_CarsByBodyType.php"> <button type="button" class="btn btn-primary">CarsByBodyType</button></a>
        </div>
        <br /><br />
        <div class="imagegrid">
            <a href="CarsByCarType.php"> <button type="button" class="btn btn-primary ">CarsByCarType</button></a>
            <a href="All_CarsByFuelType.php"> <button type="button" class="btn btn-primary">CarsByFuelType</button></a>
        </div> 
        <br /><br />
        <div class="imagegrid">
            <a href="All_StoreByCarValue.php"> <button type="button" class="btn btn-primary ">StoreByCarValue</button></a>
        </div> 
    </div>

</div>
</html>