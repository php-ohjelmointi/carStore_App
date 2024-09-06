<?php 
  require 'db.php';


   //SQL query
   $GetCarsByFeature= "SELECT C.VIN,C.Number_Plate,B.Name AS BrandName,C.Model,FL.Name
    FROM cars AS C
        INNER JOIN carfeatures AS CF ON CF.VIN = C.VIN
        INNER JOIN brands AS B ON B.Brand_ID = C.Brand_ID
        INNER JOIN feature_list AS FL ON FL.Feature_ID = CF.Feature_ID
    ORDER BY CF.Row_ID DESC;";

    //Getting all cars
    $GetAllCars = "SELECT 
        c.VIN,
        c.Number_Plate,
        b.Name AS BrandName,
        c.Model
    FROM cars AS c
        INNER JOIN  brands AS b 
        ON c.Brand_ID = b.Brand_ID
        ORDER BY c.Date_OF_Add DESC";
    $GetAllCars_Result = mysqli_query($conn,$GetAllCars);

    //Getting all features
    $GetAllFeatures = "SELECT * FROM feature_list";
    $GetAllFeatures_Result = mysqli_query($conn,$GetAllFeatures);

   if(isset($_POST['addefeatureCar'])){

    $VIN = mysqli_real_escape_string($conn,$_POST['VIN']);
    $Feature_ID = mysqli_real_escape_string($conn,$_POST['Feature_ID']);

    $AddNewFeatureForCar ="INSERT INTO carfeatures (`VIN`,`Feature_ID`) VALUES ('$VIN','$Feature_ID')";

    $AddNewFeatureForCar_Result = mysqli_query($conn, $AddNewFeatureForCar) or die (mysqli_error($conn));

                  
    }
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>Cars/features</title>
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
    .table{
        width:50%;
    }
    form{
        width:40%;
        margin-left:55%;
        margin-top:10px;
        text-align:center;
        position:fixed;

    }
</style>

<body>
<br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addshow_features.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW feature</button></a>
<a href="addnewcar.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR</button></a>
<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>VIN</th>
        <th>Number PLate</th>
        <th>Car</th>
        <th>Feature</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $GetCarsByFeature_Result = $conn->query($GetCarsByFeature);
        if ($GetCarsByFeature_Result->num_rows > 0) {
            // output data of each row
            while($CBF = $GetCarsByFeature_Result->fetch_assoc()) {
                $VIN = $CBF["VIN"];
                $Numberplate  = $CBF["Number_Plate"];
                $Brand  = $CBF["BrandName"];
                $Model  = $CBF["Model"];
                $Feature_Name  = $CBF["Name"];

                echo "<tr>";
                echo "<td><a href='other_Functionality/view/ShowCarsProfile.php?VIN=$VIN'>$VIN</a></td>";
                echo "<td>$Numberplate</td>";
                echo "<td>$Brand  $Model</td>";
                echo "<td>$Feature_Name</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>
    </tbody>
  </table>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <h1>Add new feature</h1>
        <select name="VIN" id="email" class="form-control">
        <option Value=" ">Choose car</option>
      
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($AllCars = mysqli_fetch_array($GetAllCars_Result,MYSQLI_ASSOC)):; 
                    
        ?>
            <option value="<?php echo $AllCars["VIN"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $AllCars["Number_Plate"]." - ".$AllCars["BrandName"]." ".$AllCars["Model"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>
        <br />
      <select name="Feature_ID" id="email" class="form-control">
        <option Value=" ">Choose feature</option>
      
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($AllFeature = mysqli_fetch_array($GetAllFeatures_Result,MYSQLI_ASSOC)):; 
                    
        ?>
            <option value="<?php echo $AllFeature["Feature_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $AllFeature["Feature_ID"]." - ".$AllFeature["Name"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>

      
    <br />


    <button type="submit" name="addefeatureCar" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
    </div>

</html>