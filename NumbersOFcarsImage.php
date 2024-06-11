<?php 
     require 'db.php';


    // all cars image
    $sql_getCarsImage= "SELECT * FROM cars_image ORDER BY NumberOFCarImages DESC ";
    $sql_getCarsImage_result= mysqli_query($conn,$sql_getCarsImage);
 
    if ($sql_getCarsImage_result->num_rows > 0) {
         // output data of each row
         while($row = $sql_getCarsImage_result->fetch_assoc()) {
             $Cars_Image_VIN = $row["VIN"];
             $Cars_Image_NumberPlate = $row["Number_Plate"];
             $Cars_Image_Name = $row["Name"];
             $Cars_Image_Name = $row["Model"];
             $Cars_Image_Name = $row["NumberOFCarImages"];
         }
     } else {
 
     } 


    //Counting cours
   $sql_countAll_Images = "SELECT sum(NumberOFCarImages) AS ImageNumber FROM cars_image";
   $countAll_Images = mysqli_query($conn,$sql_countAll_Images);

   if ($countAll_Images->num_rows > 0) {
        // output data of each row
        while($row = $countAll_Images->fetch_assoc()) {
            $imageNumber= $row["ImageNumber"];
        }
    } else {

    }  
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CARS by stores</title>
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
    span{
        font-size:26px;
        font-weight:bold;
    }
    a:hover{
        font-weight:bold;
        text-decoration:none;
    }
</style>
<body>

<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewcar.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR</button></a>
<a href="addCarImages.php"><button type="button" class="btn btn-primary btn-xs">ADD CAR IMAGES</button></a>

<table class="table table-striped">
    <thead>
      <tr>
        <th>VIN</th>
        <th>Number PLate</th>
        <th>Car</th>
        <th>Numbers OF image</th>
      </tr>
    </thead>
    <tbody>

        <?php 
       $sql_getCarsImage_result= mysqli_query($conn,$sql_getCarsImage);
        if ($sql_getCarsImage_result->num_rows > 0) {
            // output data of each row
            while($row = $sql_getCarsImage_result->fetch_assoc()) {
                $Cars_Image_VIN = $row["VIN"];
                $Cars_Image_NumberPlate = $row["Number_Plate"];
                $Cars_Image_Name = $row["Name"];
                $Cars_Image_Model = $row["Model"];
                $Cars_Image_NumberOFCarImages = $row["NumberOFCarImages"];
               
                echo "<tr>";
                echo "<td><a href='other_Functionality/view/ShowCarsProfile.php?VIN=$Cars_Image_VIN'>$Cars_Image_VIN</a></td>";
                echo "<td>$Cars_Image_NumberPlate</td>";
                echo "<td>$Cars_Image_Name $Cars_Image_Model</td>";
                echo "<td> $Cars_Image_NumberOFCarImages</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>
        <h1>Total images: <span><?php echo $imageNumber; ?></span></h1>
    </tbody>
  </table>
</html>

