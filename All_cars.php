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
   $HaetaanLukuoikeusLKM = "SELECT 
    c.*,
    b.Name,
    b.Brand_ID
   FROM cars AS c
   INNER JOIN  brands AS b 
   ON c.Brand_ID = b.Brand_ID
   ORDER BY c.Date_OF_Add DESC";
  
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


<body>
<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewcar.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR</button></a>
<table class="table table-striped">
    <thead>
      <tr>
        <th>VIN</th>
        <th>Number_Plate</th>
        <th>Brand Model</th>
        <th>Model Spec</th>
        <th>Date OF ADD</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $HaetaanLukuoikeusLKMTulos = $conn->query($HaetaanLukuoikeusLKM);
        if ($HaetaanLukuoikeusLKMTulos->num_rows > 0) {
            // output data of each row
            while($row = $HaetaanLukuoikeusLKMTulos->fetch_assoc()) {
                $VIN = $row["VIN"];
                $Number_Plate  = $row["Number_Plate"];
                $BrandName  = $row["Name"];
                $Brand_ID  = $row["Brand_ID"];
                $Model  = $row["Model"];
                $Model_Spec  = $row["Model_Spec"];
                $Date_OF_Add  = $row["Date_OF_Add"];

                echo "<tr>";
                echo "<td>$VIN</td>";
                echo "<td>$Number_Plate</td>";
                echo "<td> $BrandName $Model</td>";
                echo "<td> $Model_Spec</td>";
                echo "<td> $Date_OF_Add</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>