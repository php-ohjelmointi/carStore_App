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


   //SQL query
   $GetEmpServLan= "SELECT C.VIN,C.Number_Plate,concat(B.Name,' ',C.Model) AS Car,group_concat(FL.Name SEPARATOR  ', ') AS EmpServLang
   FROM carfeatures AS F
        INNER JOIN cars AS C ON C.VIN = F.VIN
        INNER JOIN feature_list AS FL ON FL.Feature_ID = F.Feature_ID
        INNER JOIN brands AS B ON C.Brand_ID = B.Brand_ID
    GROUP BY F.VIN";

?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>Cars By Features</title>
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
    .split{
        display:flex;
    }
    body{
        width:95%;
        margin:auto;
    }
</style>

<body>
<br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewemployee.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CARS</button></a>
<a href="addnewfeatureFOR_CAR.php"><button type="button" class="btn btn-primary btn-xs">ADD more Features for car</button></a>
<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>VIN</th>
        <th style="width:100px;">N_Plate</th>
        <th style="width:210px;">Car</th>
        <th>Feature</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $GetEmpServLan_Result = $conn->query($GetEmpServLan);
        if ($GetEmpServLan_Result->num_rows > 0) {
            // output data of each row
            while($CF = $GetEmpServLan_Result->fetch_assoc()) {
                
                $VIN = $CF["VIN"];
                $Number_Plate  = $CF["Number_Plate"];
                $Car  = $CF["Car"];
                $Features  = $CF["EmpServLang"];


                echo "<tr>";
                echo "<td>$VIN</td>";
                echo "<td>$Number_Plate</td>";
                echo "<td>$Car</td>";
                echo "<td>$Features</td>";

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