<?php 
    include("../../db.php");
    
    if(isset($_GET['VIN'])){
      $VIN = $_GET['VIN'];
    }else{
      $VIN = 'No data';
    }

    $GetSpesificcarsDetail = "SELECT * FROM cars WHERE VIN = '$VIN'";
    $GetSpesificcarsDetail_Result = mysqli_query($conn,$GetSpesificcarsDetail);
    while($Getting_cars_detail = $GetSpesificcarsDetail_Result->fetch_assoc()) {
        $GetSpesificcars_Number_Plate = $Getting_cars_detail['Number_Plate'];
        $GetSpesificcars_brand_ID = $Getting_cars_detail['Brand_ID'];
        $GetSpesificcars_Model = $Getting_cars_detail['Model'];
        $GetSpesificcars_Model_Spec = $Getting_cars_detail['Model_Spec'];
        $GetSpesificcars_Price  = $Getting_cars_detail['Price'];
        $GetSpesificcars_Year = $Getting_cars_detail['Year'];
        $GetSpesificcars_Gearbox = $Getting_cars_detail['Gearbox'];
        $GetSpesificcars_Fuel_Type = $Getting_cars_detail['Fuel_Type'];
        $GetSpesificcars_Mileage = $Getting_cars_detail['Mileage'];
        $GetSpesificcars_Type_OF_Car = $Getting_cars_detail['Type_OF_Car'];
        $GetSpesificcars_Type_OF_Body = $Getting_cars_detail['Type_OF_Body'];
        $GetSpesificcars_Draw_Method = $Getting_cars_detail['Draw_Method'];
        $GetSpesificcars_Color = $Getting_cars_detail['Color'];
        $GetSpesificcars_Number_Of_Person = $Getting_cars_detail['No_OF_Person'];
        $GetSpesificcars_Number_OF_Doors = $Getting_cars_detail['No_OF_Doors'];
        $GetSpesificcars_Power = $Getting_cars_detail['Power'];
        $GetSpesificcars_TopSpeed = $Getting_cars_detail['TopSpeed'];
        $GetSpesificcars_Engine_Capacity = $Getting_cars_detail['Engine_Capacity'];
        $GetSpesificcars_Steering = $Getting_cars_detail['Steering'];
        $GetSpesificcars_Energy_label = $Getting_cars_detail['Energy_label'];
        $GetSpesificcars_Electric_Range = $Getting_cars_detail['Electric_Range'];
        $GetSpesificcars_Battery_Capacity = $Getting_cars_detail['Battery_Capacity'];
        $GetSpesificcars_Acceleration = $Getting_cars_detail['Acceleration'];
        $GetSpesificcars_Height = $Getting_cars_detail['Height'];
        $GetSpesificcars_Width = $Getting_cars_detail['Width'];
        $GetSpesificcars_Length = $Getting_cars_detail['Length'];
        $GetSpesificcars_Mass = $Getting_cars_detail['Mass'];
        $GetSpesificcars_Torque = $Getting_cars_detail['Torque'];
        $GetSpesificcars_Store_ID = $Getting_cars_detail['Store_ID'];
    }

    //SQL query brands
    $sql_brands = "SELECT * FROM brands";
    $all_brand = mysqli_query($conn,$sql_brands);

    //SQL query stores
    $sql_stores = "SELECT * FROM stores";
    $all_stores = mysqli_query($conn,$sql_stores);
    
    //SQL select models by brand
    $sql_All_ModelsByBrands = "SELECT Distinct(Model) FROM cars where Brand_ID= '$GetSpesificcars_brand_ID' ORDER BY Model";
    $query_sql_All_ModelsByBrands = mysqli_query($conn,$sql_All_ModelsByBrands);


  if(isset($_POST['addcar'])){
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
    $Torque = mysqli_real_escape_string($conn,$_POST['Torque']);
    $TopSpeed = mysqli_real_escape_string($conn,$_POST['TopSpeed']);
    $Engine_Capacity = mysqli_real_escape_string($conn,$_POST['Engine_Capacity']);
    $store_ID = mysqli_real_escape_string($conn,$_POST['store_ID']);
    $Steering = mysqli_real_escape_string($conn,$_POST['steering']);
    $Height = mysqli_real_escape_string($conn,$_POST['Height']);
    $Width = mysqli_real_escape_string($conn,$_POST['Width']);
    $Length = mysqli_real_escape_string($conn,$_POST['Length']);
    $Acceleration = mysqli_real_escape_string($conn,$_POST['Acceleration']);
    $Electric_Range = mysqli_real_escape_string($conn,$_POST['Electric_Range']);
    $Energy_label = mysqli_real_escape_string($conn,$_POST['Energy_label']);
    $Battery_Capacity = mysqli_real_escape_string($conn,$_POST['Battery_Capacity']);

  }
?>

<!DOCTYPE html>
<html>
<head>
<title><?php echo $VIN; ?></title>
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
    margin-top:20px;
  }


  .btn-success,.btn-default{
    text-transform:UpperCase;
    font-weight:bold;
    letter-spacing:5px;
    border-radius:0px;
  }

  #email{
    border-radius:0px;
  }

  </style>
</head>
<body>

<div class="container">
  <h2>Update cars detail</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <div class="ROW">
        <div class="form-group">
        <span>VIN</span>
            <input 
                type="text" 
                class="form-control" 
                id="email" 
                name="VIN2" 
                placeholder="Enter VIN" 
                value=<?php echo $VIN; ?>
                
            >
        </div>

      &nbsp;&nbsp;&nbsp;
      <div class="form-group">
      <span>Number Plate</span>
        <input  
          type="text" 
          class="form-control" 
          id="email" 
          name="NumberPlate" 
          hidden
          oninput="this.value = this.value.toUpperCase()" 
          placeholder="Enter Number Plate" 
          value=<?php echo $GetSpesificcars_Number_Plate; ?>
        >
      </div>
    </div>



    <span>Brand</span><span style="margin-left:38.5em;">Model</span>
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
      <select name="Model" id="email" class="form-control">
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($Models = mysqli_fetch_array(
                    $query_sql_All_ModelsByBrands,MYSQLI_ASSOC)):; 
        ?>
            <option value="<?php echo $Models["Model"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $Models["Model"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>

    </div>
    <br />
    <span>Model_spec</span><span style="margin-left:36em;" >Price</span>
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Model_spec" placeholder="model_spec" value=<?php echo $GetSpesificcars_Model_Spec; ?>>
       &nbsp;&nbsp;&nbsp; 
      <input type="text" class="form-control" id="email" name="Price" placeholder="Price" value=<?php echo $GetSpesificcars_Price; ?>>
    </div>

    <br />
    <span>Fuel_type</span><span style="margin-left:37em;" >Mileage</span>
    <div class="ROW">
      <select name="Fuel_type" id="email" class="form-control" >
        <option value="#"><?php echo $GetSpesificcars_Fuel_Type; ?></option>
        <option value="Petrol">Petrol</option>
        <option value="Diesel">Diesel</option>
        <option value="Electric">Electric</option>
        <option value="Plug-In Hybrid">Plug-In Hybrid</option>
        <option value="Gas">Gas</option>
      </select>
       &nbsp;&nbsp;&nbsp;
        <input 
            type="text" 
            class="form-control" 
            id="email" 
            name="Mileage" 
            placeholder="Mileage" 
            value=<?php echo $GetSpesificcars_Mileage; ?>
        >
    </div>
    <br />
    <span>TypeOFCar</span><span style="margin-left:37em;" >TypeOFBody</span>
    <div class="ROW">
    <select name="TypeOFCar" id="email" class="form-control">
        <option value="#" style="font-weight:bold;"><?php echo $GetSpesificcars_Type_OF_Car; ?></option>
        <option value="Sedan (Henkilöauto)">Sedan (Henkilöauto)</option>
        <option value="Van (Pakettiauto)">Van (Pakettiauto)</option>
        <option value="Minibus">Minibus</option>
        <option value="LightTruck (Kevyt kuorma-auto)">LightTruck (Kevyt kuorma-auto)</option>
    </select>
    &nbsp;&nbsp;&nbsp;
    <select name="TypeOFBody" id="email" class="form-control">
        <option value="#"><?php echo $GetSpesificcars_Type_OF_Body; ?></option>
        <option value="convertible (Avoauto)">convertible (Avoauto)</option>
        <option value="Pickup (Avolava)">Pickup (Avolava)</option>
        <option value="Coupe">Coupe</option>
        <option value="Wagon (Farmari)">Wagon (Farmari)</option>
        <option value="SUV (Maastoauto)">SUV (Maastoauto)</option>
        <option value="Sedan (Porrasperä)">Sedan (Porrasperä)</option>
        <option value="SpaceCar (Tila-auto)">SpaceCar (Tila-auto)</option>
        <option value="Hatchback (Viistoperä)">Hatchback (Viistoperä)</option>
        <option value="Other (Muu)">Other (Muu)</option>
    </select>
    </div>

    <br />
    <span>DrawMethod</span><span style="margin-left:30em;" >Color</span><span style="margin-left:30em;" >Gearbox</span>
    <div class="ROW">
      <select name="DrawMethod" id="email" class="form-control">
        <option value="#"><?php echo $GetSpesificcars_Draw_Method; ?></option>
        <option value="4WD">4WD</option>
        <option value="RWD">RWD</option>
        <option value="FWD">FWD</option>
      </select>
    &nbsp;&nbsp;&nbsp;
    <select name="Color" id="email" class="form-control">
        <option value="#"><?php echo $GetSpesificcars_Color; ?></option>
        <option value="Red">Red</option>
        <option value="White">White</option>
        <option value="Blue">Blue</option>
        <option value="Black">Black</option>
        <option value="Silver">Silver</option>
        <option value="Yellow">Yellow</option>
    </select>
    &nbsp;&nbsp;&nbsp;
    <select name="Gearbox" id="email" class="form-control">
        <option value="#"><?php echo $GetSpesificcars_Gearbox; ?></option>
        <option value="Automatic">Automatic</option>
        <option value="Manual">Manual</option>
    </select>
    </div>

    <br />
    <span>Number_Of_Person</span><span style="margin-left:37em;" >Number_OF_Doors</span>
    <div class="ROW">
        <input 
            type="text" 
            class="form-control" 
            id="email" 
            name="Number_Of_Person" 
            placeholder="Number_Of_Person"
            value=<?php echo $GetSpesificcars_Number_Of_Person; ?>
        >
       &nbsp;&nbsp;&nbsp;
      <input 
            type="text" 
            class="form-control" 
            id="email" 
            name="Number_OF_Doors" 
            placeholder="Number_OF_Doors"
            value=<?php echo $GetSpesificcars_Number_OF_Doors; ?>
        >
    </div>

    <br />
    <span>Power</span><span style="margin-left:30em;" >Mass</span><span style="margin-left:30em;" >Torque</span>
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Power" placeholder="Power"  value=<?php echo $GetSpesificcars_Power; ?>>
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Mass" placeholder="Mass"  value=<?php echo $GetSpesificcars_Mass; ?>>
      &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Torque" placeholder="Torque"  value=<?php echo $GetSpesificcars_Torque; ?>>
    </div>
  

    <br />
    <span>TopSpeed</span><span style="margin-left:27em;" >Engine_Capacity</span><span style="margin-left:27em;" >Battery_Capacity</span>
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="TopSpeed" placeholder="TopSpeed" value=<?php echo $GetSpesificcars_TopSpeed; ?>>
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Engine_Capacity" placeholder="Engine_Capacity" value=<?php echo $GetSpesificcars_Engine_Capacity; ?>>
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Battery_Capacity" placeholder="Battery Capacity" value=<?php echo $GetSpesificcars_Battery_Capacity; ?>>
    </div>

    <br />
    <span>Energy_label</span><span style="margin-left:27em;" >Electric_Range</span><span style="margin-left:27em;" >Acceleration</span>
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Energy_label" placeholder="Energy label" value=<?php echo $GetSpesificcars_Energy_label; ?> >
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Electric_Range" placeholder="Electric Range" value=<?php echo $GetSpesificcars_Electric_Range; ?> >
      &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Acceleration" placeholder="Acceleration" value=<?php echo $GetSpesificcars_Acceleration; ?> > 
    </div>

    <br />
    <span>Width</span><span style="margin-left:27em;" >Height</span><span style="margin-left:27em;" >Length</span>
    <div class="ROW">
        <input type="text" class="form-control" id="email" name="Width" placeholder="Width (mm)" value=<?php echo $GetSpesificcars_Width; ?> >
        &nbsp;&nbsp;&nbsp;
        <input type="text" class="form-control" id="email" name="Height" placeholder="Height (mm)" value=<?php echo $GetSpesificcars_Height; ?> >
        &nbsp;&nbsp;&nbsp;
        <input 
            type="text" 
            class="form-control" 
            id="email" 
            name="Length" 
            placeholder="Length (mm)" 
            value=<?php 
                if($GetSpesificcars_Length = 'NULL'){
                    echo 'NULL';
                }else{
                    echo $GetSpesificcars_Length;
                }
             ?> > 
    </div>

    <br />
    <span>Year</span><span style="margin-left:26em;" >store_ID</span><span style="margin-left:25em;" >Steering</span>
    <div class="ROW">
        <input 
            type="text" 
            class="form-control" 
            id="email" 
            name="Year" 
            placeholder="Year" 
            value=<?php echo $GetSpesificcars_Year; ?>
        >
      &nbsp;&nbsp;&nbsp;
        <select name="store_ID" id="email" class="form-control" value=<?php echo $Store_ID; ?>>
          <?php 
              while ($store = mysqli_fetch_array(
                  $all_stores,MYSQLI_ASSOC)):; 
                ?>
                  <option value="<?php echo $store["Store_ID"];
                ?>">
                  <?php echo $store["Store_ID"]."-".$store["Store_Name"];
                ?>
                  </option>
                <?php 
              endwhile; 
          ?>
        </select>
        &nbsp;&nbsp;&nbsp;
        <select name="steering" id="email" class="form-control">
          <option value="#"><?php echo $GetSpesificcars_Steering; ?></option>
          <option value="Left">Left</option>
          <option value="Right">Right</option>
        </select>
    </div>
    <br />
    <button type="submit" name="addcar" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


