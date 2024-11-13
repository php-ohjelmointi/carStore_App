<?php 
  require 'db.php';
  error_reporting(0);  
  $sql_postalcodes = "SELECT * FROM postalcodes ORDER BY rand() LIMIT 1";
  $all_sql_postalcodes = mysqli_query($conn,$sql_postalcodes);
    while($row = mysqli_fetch_assoc($all_sql_postalcodes))
      { 
        $PostalCode  = $row['PostalCode'];
        $Region  = $row['Region'];
      }


  $sql_GET_RandomCustomer= "SELECT * FROM customers WHERE SSN IS NULL LIMIT 1";
  $query_sql_GET_RandomCustomer = mysqli_query($conn,$sql_GET_RandomCustomer);
    while($row = mysqli_fetch_assoc($query_sql_GET_RandomCustomer))
      {
        $Customer_ID = $row['Customer_ID'];
      }

  //SSN Generator
  $days = rand(01,31);
  if($days < 10){
    $nd = "0".$days;
    
  }
  else{
    $nd = $days;
  }

$month = rand(01, 12);
  if($month < 10){
    $nm = "0".$month;
  }
  else{
    $nm = $month;
  }
$year = rand(20,99);
$ChekNumber = rand(999,99);
$Strting = substr(str_shuffle("ABCDEFGHIJKLMNOPQRSTUVWXYZ"),1,1);
$Normi_Henksu = $nd.$nm.$year.'-'.$ChekNumber.$Strting;

if($nd % 3){
  $Strting_2 = substr(str_shuffle("ABCDEFGHIJKLMNOPQRSTUVWXYZ"),1,1);
  $SekaHenksu = $nd.$nm.$year.$Strting_2.$ChekNumber.$Strting;
}else{
  $SekaHenksu = $Normi_Henksu;
}

$UpdateCustomer ="UPDATE customers SET `SSN` = '$SekaHenksu', `PostalCode` = '$PostalCode' WHERE Customer_ID = '$Customer_ID'";
$UpdateCustomerKysely = mysqli_query($conn, $UpdateCustomer) or die (mysqli_error($conn));
  if($UpdateCustomerKysely == 1)
  {
    header("Location:index.php");   
  }
  
   
?>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Customers</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
</head>
<body>
<?php
?>
<div class="mt-2" style='margin-left:1em;margin-right:1em'>

</body>
</html>



