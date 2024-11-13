<?php 
  require 'db.php';
  error_reporting(0);  
  
    $sql_GET_RandomCars= "SELECT * FROM cars WHERE Number_Plate IS NULL LIMIT 1";
    $query_sql_GET_RandomCars = mysqli_query($conn,$sql_GET_RandomCars);
        while($row = mysqli_fetch_assoc($query_sql_GET_RandomCars))
        {
            $VIN = $row['VIN'];
            
        }

    //Number_Plate Generator
    $random_Strig = substr(str_shuffle(str_repeat('ABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 3);
    $random_Number = substr(str_shuffle(str_repeat('0123456789', mt_rand(1,10))), 1, 3);
    $Gnerated_Number_Plate = $random_Strig.'-'.$random_Number;
    echo $Gnerated_Number_Plate;
     

    

$UpdateCars ="UPDATE cars SET `Number_Plate` = '$Gnerated_Number_Plate' WHERE VIN = '$VIN'";
$UpdateCars_Kysely = mysqli_query($conn, $UpdateCars) or die (mysqli_error($conn));
  if($UpdateCars_Kysely == 1)
  {
    header("Location:index.php");   
  }  
  
   
?>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Cars</title>
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



