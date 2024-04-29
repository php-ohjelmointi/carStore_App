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
    
    
    //SQL query brands
  $sql_brands = "SELECT * FROM brands";
  $all_brand = mysqli_query($conn,$sql_brands);

    //SQL query stores
  $sql_stores = "SELECT * FROM stores";
  $all_stores = mysqli_query($conn,$sql_stores);



  if(isset($_POST['addcar'])){
    $VIN2 = mysqli_real_escape_string($conn,$_POST['VIN2']);
    $brand_ID = mysqli_real_escape_string($conn,$_POST['brand_ID']);
    $NumberPlate = mysqli_real_escape_string($conn,$_POST['NumberPlate']);
    $Model = mysqli_real_escape_string($conn,$_POST['Model']);
    $Model_Spec= mysqli_real_escape_string($conn,$_POST['Model_spec']);
    $Price= mysqli_real_escape_string($conn,$_POST['Price']);
    $Year= mysqli_real_escape_string($conn,$_POST['Year']);
    $Gearbox= mysqli_real_escape_string($conn,$_POST['Gearbox']);
    $Fuel_type = mysqli_real_escape_string($conn,$_POST['Fuel_type']);
    $Mileage = mysqli_real_escape_string($conn,$_POST['Mileage']);
    $TypeOFCar = mysqli_real_escape_string($conn,$_POST['TypeOFCar']);
    $TypeOFBody = mysqli_real_escape_string($conn,$_POST['TypeOFBody']);
    $DrawMethod = mysqli_real_escape_string($conn,$_POST['DrawMethod']);
    $Color = mysqli_real_escape_string($conn,$_POST['Color']);
    $Number_Of_Person = mysqli_real_escape_string($conn,$_POST['Number_Of_Person']);
    $Number_OF_Doors = mysqli_real_escape_string($conn,$_POST['Number_OF_Doors']);
    $Power = mysqli_real_escape_string($conn,$_POST['Power']);
    $Mass = mysqli_real_escape_string($conn,$_POST['Mass']);
    $TopSpeed = mysqli_real_escape_string($conn,$_POST['TopSpeed']);
    $Engine_Capacity = mysqli_real_escape_string($conn,$_POST['Engine_Capacity']);
    $store_ID = mysqli_real_escape_string($conn,$_POST['store_ID']);

    

    if(empty($_POST['Engine_Capacity'])){
      $NewEngine_Capacity = 'NULL';
    }else{
      $NewEngine_Capacity = $Engine_Capacity;
    }
    
    if(empty($_POST['Power'])){
      $NewPower = 'NULL';
    }else{
      $NewPower = $Power;
    }

    if(empty($_POST['Mass'])){
      $NewMass = 'NULL';
    }else{
      $NewMass = $Mass;
    }

    if(empty($_POST['TopSpeed'])){
      $NewTopSpeed = 'NULL';
    }else{
      $NewTopSpeed = $TopSpeed;
    }


    


    $AddNewCar ="INSERT INTO cars (`VIN`, `Number_Plate`, `Brand_ID`, `Model`, `Model_Spec`, `Price`, `Year`, `Gearbox`, `Fuel_Type`, `Mileage`, 
                                   `Type_OF_Car`, `Type_OF_Body`, `Draw_Method`, `Color`, `Number_Of_Person`, `Number_OF_Doors`, `Power`, `Mass`, 
                                   `TopSpeed`, `Engine_Capacity`, `Store_ID`) 
                    VALUES ('$VIN2','$NumberPlate','$brand_ID','$Model','$Model_Spec','$Price','$Year','$Gearbox','$Fuel_type',
                         '$Mileage','$TypeOFCar','$TypeOFBody','$DrawMethod','$Color','$Number_Of_Person','$Number_OF_Doors','$NewPower','$NewMass',
                         '$NewTopSpeed','$NewEngine_Capacity','$store_ID')";
                    $AddNewCarKysely = mysqli_query($conn, $AddNewCar) or die (mysqli_error($conn));

                  if($AddNewCarKysely == 1)
                    {
                      header('Location:All_cars.php');
                    }
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD NEW CAR</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


  <style>
  .ROW{
    display:flex;
  }

  .form-group{
    width:50%;
  }

  </style>
</head>
<body>

<div class="container">
  <h2>Add new car</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <div class="ROW">
      <div class="form-group">
        <input type="text" class="form-control" id="email" name="VIN2" placeholder="Enter VIN">
      </div>
     &nbsp;&nbsp;&nbsp;
      <div class="form-group">
        <input type="text" class="form-control" id="email" name="NumberPlate" oninput="this.value = this.value.toUpperCase()" placeholder="Enter Number Plate">
      </div>
    </div>
    <div class="ROW">
      <select name="brand_ID" id="email" class="form-control">
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($brand = mysqli_fetch_array(
                    $all_brand,MYSQLI_ASSOC)):; 
        ?>
            <option value="<?php echo $brand["Brand_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $brand["Brand_ID"]."-".$brand["Name"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>

      &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Model" placeholder="Model">
    </div>
    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Model_spec" placeholder="model_spec">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Price" placeholder="Price">
    </div>

    <br />
    <div class="ROW">
      <select name="Fuel_type" id="email" class="form-control">
        <option value="#">Fuel type</option>
        <option value="Petrol">Petrol</option>
        <option value="Diesel">Diesel</option>
        <option value="Electric">Electric</option>
        <option value="Plug-In Hybrid">Plug-In Hybrid</option>
        <option value="Gas">Gas</option>
      </select>
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Mileage" placeholder="Mileage">
    </div>
    <br />
    <div class="ROW">
    <select name="TypeOFCar" id="email" class="form-control">
        <option value="#">TypeOFCar</option>
        <option value="Person">Person</option>
        <option value="Van">Van</option>
        <option value="Minibus">Minibus</option>
        <option value="Motorcycle">Motorcycle</option>
    </select>
    &nbsp;&nbsp;&nbsp;
    <select name="TypeOFBody" id="email" class="form-control">
        <option value="#">TypeOFBody</option>
        <option value="Sedan">Sedan</option>
        <option value="Hatchback">Hatchback</option>
        <option value="SUV">SUV</option>
        <option value="Wagon">Wagon</option>
        <option value="Coupe">Coupe</option>
    </select>
    </div>

    <br />
    <div class="ROW">
      <select name="DrawMethod" id="email" class="form-control">
        <option value="#">DrawMethod</option>
        <option value="4WD">4WD</option>
        <option value="RWD">RWD</option>
        <option value="FWD">FWD</option>
      </select>
    &nbsp;&nbsp;&nbsp;
    <select name="Color" id="email" class="form-control">
        <option value="#">Color</option>
        <option value="Red">Red</option>
        <option value="White">White</option>
        <option value="Blue">Blue</option>
        <option value="Black">Black</option>
        <option value="Silver">Silver</option>
        <option value="Yellow">Yellow</option>
    </select>
    </div>

    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Number_Of_Person" placeholder="Number_Of_Person">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Number_OF_Doors" placeholder="Number_OF_Doors">
    </div>

    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Power" placeholder="Power">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Mass" placeholder="Mass">
    </div>

    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="TopSpeed" placeholder="TopSpeed">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Engine_Capacity" placeholder="Engine_Capacity">
    </div>

    <br />
    <div class="ROW">
     
                <select name="store_ID" id="email" class="form-control">
                <?php 
                    // use a while loop to fetch data 
                    // from the $all_categories variable 
                    // and individually display as an option
                    while ($store = mysqli_fetch_array(
                            $all_stores,MYSQLI_ASSOC)):; 
                ?>
                    <option value="<?php echo $store["Store_ID"];
                        // The value we usually set is the primary key
                    ?>">
                        <?php echo $store["Store_ID"]."-".$store["Store_Name"];
                            // To show the category name to the user
                        ?>
                    </option>
                <?php 
                    endwhile; 
                    // While loop must be terminated
                ?>
            </select>
            &nbsp;&nbsp;&nbsp;
            <input type="text" class="form-control" id="email" name="Year" placeholder="Year">
    </div>









    <br />
    <button type="submit" name="addcar" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


