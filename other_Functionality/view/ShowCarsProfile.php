<?php 
include("../../db.php");
$VIN = $_GET['VIN'];


$sql = "SELECT 
c.*,
b.Name AS BrandName,
b.Brand_ID,
S.Store_Name
FROM cars AS c
INNER JOIN  brands AS b ON c.Brand_ID = b.Brand_ID
INNER JOIN stores AS S ON c.Store_ID = S.Store_ID
WHERE c.VIN = '$VIN'";

  $query = mysqli_query($conn,$sql);
  while($row = mysqli_fetch_assoc($query))
    {
        $NumberPlate = $row['Number_Plate'];
        $BrandName = $row['BrandName'];
        $Model = $row['Model'];
        $SID = $row['Store_ID'];

        $ModelSpec = $row['Model_Spec'];
        //Erotellaan tuhannesosat
        $ErotaTuhannet_Laske_hinta = $row['Price'];
        $MuokattuTuhannet_ErotaTuhannet_Laske_hinta = number_format($ErotaTuhannet_Laske_hinta , 0, ',', ' ');
        $Year = $row['Year'];

        $Gearbox = $row['Gearbox'];
        $Fuel_Type = $row['Fuel_Type'];
        //Erotellaan tuhannesosat
        $Mileage_original = $row['Mileage'];
        $Mileage_New = number_format($Mileage_original , 0, ',', ' ');

        $Type_OF_Car = $row['Type_OF_Car'];
        $Type_OF_Body = $row['Type_OF_Body'];
        $Draw_Method = $row['Draw_Method'];
        
        $Color = $row['Color'];
        $Number_Of_Person = $row['No. of person'];
        $Number_OF_Doors = $row['No. of doors'];
        
        $TopSpeed = $row['TopSpeed'];
        $Engine_Capacity = $row['Engine_Capacity'];
        $Steering = $row['Steering'];
       
        $Electric_Range = $row['Electric_Range'];
        $Battery_Capacity = $row['Battery_Capacity'];
        $Acceleration = $row['Acceleration'];

        
        $Height =  number_format($row['Height'], 0, '', ' ');
        $Width =  number_format($row['Width'] , 0, '', ' ');
        $Length = number_format($row['Length'], 0, '', ' ');

        $Torque = $row['Torque'];
        $EnergyLabel = $row['Energy_label'];
        $Store_Name = $row['Store_Name'];

        $Date_OF_First_Registration_Date_Original = $row['First_Registration_Date'];
        $New_Date_OF_First_Registration_Date_Original = date("m-Y", strtotime($Date_OF_First_Registration_Date_Original));  
        $Date_OF_Add_Original = $row['Date_OF_Add'];
        $New_Date_OF_Add = date("m-Y", strtotime($Date_OF_Add_Original));  

        $Power_Kw = $row['Power'];
        $Power_HP = $row['Power']*1.34102;
        $Power_HP_New = number_format($Power_HP , 0, ',', ' ');
    }

//getting car's features
$sql_GetCarFeatures = "SELECT CF.VIN, FL.Name 
    FROM carfeatures As CF 
INNER JOIN feature_list AS FL ON CF.Feature_ID = FL.Feature_ID
WHERE CF.VIN = '$VIN'";   
$query_GetCarFeatures = mysqli_query($conn,$sql_GetCarFeatures); 


//Getting Cars ownership and deal
$sql_GetCarOwnership = "SELECT CS.VIN,CA.Number_Plate,B.Name As BrandName,CA.Model,E.SSN AS Emp_SSN, 
    concat(E.F_Name,' ',E.L_Name) AS Sold_BY, CU.SSN AS Customer_SSN,concat(CU.F_Name,' ',CU.L_Name) 
    AS Sold_TO, CS.Original_Price,CS.Sold_Price, CS.Sold_Date AS Deal_Date,S.Store_Name 
FROM carsold AS CS 
    INNER JOIN employees AS E ON E.Emp_ID = CS.Sold_By 
    INNER JOIN customers AS CU ON CU.Customer_ID = CS.Sold_To 
    INNER JOIN cars AS CA ON CA.VIN = CS.VIN 
    INNER JOIN brands AS B ON B.Brand_ID = CA.Brand_ID 
    INNER JOIN stores AS S ON S.Store_ID = CA.Store_ID 
WHERE CS.VIN = '$VIN'";   
$query_GetCarOwnership = mysqli_query($conn,$sql_GetCarOwnership); 


function make_query($conn)
{
 $VIN = $_GET['VIN'];
 $query = "SELECT I.*,C.* FROM images AS i INNER JOIN cars AS C ON I.VIN = C.VIN WHERE I.VIN = '$VIN'";
 $result = mysqli_query($conn, $query);
 return $result;
}

function make_slide_indicators($conn)
{
 $output = '';
 $count = 0;
 $result = make_query($conn);
 while($row = mysqli_fetch_array($result))
 {
  if($count == 0)
  {
   $output .= '
   <li data-target="#dynamic_slide_show" data-slide-to="'.$count.'" class="active"></li>
   ';
  }
  else
  {
   $output .= '
   <li data-target="#dynamic_slide_show" data-slide-to="'.$count.'"></li>
   ';
  }
  $count = $count + 1;
 }
 return $output;
}

function make_slides($conn)
{
 $output = '';
 $count = 0;
 $result = make_query($conn);
 while($row = mysqli_fetch_array($result))
 {
  if($count == 0)
  {
   $output .= '<div class="item active">';
  }
  else
  {
   $output .= '<div class="item">';
  }
  $output .= '
   <img src="../../images/cars/'.$row["Image_Name"].'" alt="'.$row["Image_Name"].'" />
  </div>
  ';
  $count = $count + 1;
 }
 return $output;
}

?>

<!DOCTYPE html>
<html>
 <head>
  <title><?php echo $VIN.', '.$NumberPlate; ?></title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
 </head>
 <style>
    body{
        width:100%;
        margin-top:10px;
        font-family: "Quicksand", sans-serif;
        font-optical-sizing: auto;
        font-style: normal;
    }
    .container{
        margin-left:15em;
        width:80%;
    }
    .datatable{
        margin-top:5px;
        width:78.65%;
        margin-left:16em;
        margin-bottom:2em;
    }
    .FirstRow{
        display: flex;
        font-size:18px;
        height:40px;
    }

    .firstData{
        margin-top:0.4em;
        font-weight:bold;
        text-align:right;
    }
    .SecondData{
        margin-top:0.4em;
        font-weight:bold;
        text-align:right;
    }

    .firstHeader, .SecondHeader{
        margin-top:0.4em;
    }

    .FirstRow:nth-child(odd){
        background-color:rgb(229, 228, 226);
    }
    .FirstRow:nth-child(even){
        background-color:rgb(229, 228, 226,0.5);
    }
    #dynamic_slide_show{
        height:55em;
        width:100%;
    }
    img{
        height:55em !important;
        width:100%;
    }
    .error{
        color:red;
    }
    span{
        color:black;
    }

    h2{
        text-align:center;
        margin-top:1em;
    }

    .features{
        display: grid;
        grid-template-columns: auto;
    }
    .row{
        width:78.65%;
        margin-left:16em;
        margin-bottom:2em;
    }
 </style>
<style>
 
</style>
 <body>

  <div class="container">
   <div id="dynamic_slide_show" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
    <?php echo make_slide_indicators($conn); ?>
    </ol>

    <div class="carousel-inner">
     <?php echo make_slides($conn); ?>
    </div>
    <a class="left carousel-control" href="#dynamic_slide_show" data-slide="prev">
     <span class="glyphicon glyphicon-chevron-left"></span>
     <span class="sr-only">Previous</span>
    </a>

    <a class="right carousel-control" href="#dynamic_slide_show" data-slide="next">
     <span class="glyphicon glyphicon-chevron-right"></span>
     <span class="sr-only">Next</span>
    </a>
   </div>
  </div>
  <h2>Vechile Details</h2>
  <div class="datatable">
    <div class="FirstRow">
        <div class="col-md-2 firstHeader">VIN</div>
        <div class="col-md-4 firstData"><?php echo $VIN; ?></div>
        <div class="col-md-2 SecondHeader">Number Plate</div>
        <div class="col-md-4 SecondData"><?php echo $NumberPlate; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Brand</div>
        <div class="col-md-4 firstData"><?php echo $BrandName; ?></div>
        <div class="col-md-2 SecondHeader">Model</div>
        <div class="col-md-4 SecondData"><?php echo $Model.' '.$ModelSpec; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Price</div>
        <div class="col-md-4 firstData"><?php echo $MuokattuTuhannet_ErotaTuhannet_Laske_hinta.' €'; ?></div>
        <div class="col-md-2 SecondHeader">Year</div>
        <div class="col-md-4 SecondData"><?php echo $Year; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Gearbox</div>
        <div class="col-md-4 firstData"><?php echo $Gearbox; ?></div>
        <div class="col-md-2 SecondHeader">Fuel Type</div>
        <div class="col-md-4 SecondData"><?php echo $Fuel_Type; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Mileage</div>
        <div class="col-md-4 firstData"><?php echo $Mileage_New.' Km'; ?></div>
        <div class="col-md-2 SecondHeader">Type Of Car</div>
        <div class="col-md-4 SecondData"><?php echo $Type_OF_Car; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Type Of Body</div>
        <div class="col-md-4 firstData"><?php echo $Type_OF_Body; ?></div>
        <div class="col-md-2 SecondHeader">Draw Method</div>
        <div class="col-md-4 SecondData"><?php echo $Draw_Method; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Color</div>
        <div class="col-md-4 firstData"><?php echo $Color; ?></div>
        <div class="col-md-2 SecondHeader">No. of person</div>
        <div class="col-md-4 SecondData"><?php echo $Number_Of_Person; ?></div>
    </div>

    
    <div class="FirstRow">
        <div class="col-md-2 firstHeader">No. of doors</div>
        <div class="col-md-4 firstData"><?php echo $Number_OF_Doors; ?></div>
        <div class="col-md-2 SecondHeader">Power</div>
        <div class="col-md-4 SecondData"><?php echo $Power_Kw.' kW ('.$Power_HP_New.' Hp)'; ?></div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Torque</div>
        <div class="col-md-4 firstData"> 
            <?php 
                if($Torque === NULL){
                    echo "<p class='error'>No data available</p>";
                }else
                {
                    echo $Torque.' Nm';
                }
            ?>
        </div>
        <div class="col-md-2 SecondHeader">Dimensions (H/W/L)</div>
        <div class="col-md-4 SecondData">
            <?php 
                if($Height === NULL && $Width === NULL && $Length === NULL)
                    {
                        echo "<p class='error'>No data available</p>";
                    }
                else
                    {
                        echo $Height.' / '.$Width.' / '.$Length.' mm';
                    }
            ?>
        </div>
    </div>

    
    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Top Speed</div>
        <div class="col-md-4 firstData"><?php echo $TopSpeed.' Km/h'; ?></div>
        <div class="col-md-2 SecondHeader">Engine_Capacity</div>
        <div class="col-md-4 SecondData"> 
            <?php 
                if($Engine_Capacity === NULL){
                    echo "<p class='error'>No data available</p>";
                }else
                {
                    echo $Engine_Capacity.' l';
                }
            ?>
        </div>
    </div>

    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Steering</div>
        <div class="col-md-4 firstData"><?php echo $Steering; ?></div>
        <div class="col-md-2 SecondHeader">Energy label</div>
        <div class="col-md-4 SecondData"> 
            <?php 
                if($EnergyLabel === NULL)
                    {
                        echo "<p class='error'>No data available</p>";
                    }
                else
                    {
                        if($EnergyLabel < 100)
                        {
                            echo "<p style='color:#228B22'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                        else if($EnergyLabel >= 100 & $EnergyLabel <= 120)
                        {
                            echo "<p style='color:#50C878'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                        else if($EnergyLabel >= 120 && $EnergyLabel <= 130)
                        {
                            echo "<p style='color:#93C572'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                        else if($EnergyLabel >= 130 && $EnergyLabel <= 150)
                        {
                            echo "<p style='color:#E4D00A'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                        else if($EnergyLabel >= 150 && $EnergyLabel <= 176)
                        {
                            echo "<p style='color:#FFAA33;'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                        else if($EnergyLabel >= 176 && $EnergyLabel <= 200)
                        {
                            echo "<p style='color:#F08000'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                        else if($EnergyLabel > 200 )
                        {
                            echo "<p style='color:red;'>".$EnergyLabel." <span>g/km</span></p>";
                        }
                    }
            ?>
        </div>
    </div>
    
    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Electric Range</div>
        <div class="col-md-4 firstData">
            <?php 
                if($Electric_Range === NULL)
                    {
                        echo "<p class='error'>No data available</p>";
                    }
                else
                    {
                        echo $Electric_Range.' Km';
                    }
            ?>
        </div>
        <div class="col-md-2 SecondHeader">Battery Capacity</div>
        <div class="col-md-4 SecondData">
            <?php 
                if($Battery_Capacity === NULL)
                    {
                        echo "<p class='error'>No data available</p>";
                    }
                else
                    {
                        echo $Battery_Capacity.' kW';
                    }
            ?>
        </div>
    </div>


    <div class="FirstRow">
        <div class="col-md-2 firstHeader">Acceleration</div>
        <div class="col-md-4 firstData">
            <?php 
                if($Acceleration === NULL)
                    {
                        echo "<p class='error'>No data available</n>";
                    }
                else
                    {
                        echo $Acceleration.'s / 100km/h';
                    }
            ?>
        </div>
        <div class="col-md-2 SecondHeader">Store</div>
        <?php 
            echo "<div class='col-md-4 SecondData'><a href='Admin_StorePage.php?SID=$SID'>".$Store_Name."</a></div>";
        ?>
    </div>


    <div class="FirstRow">
        <div class="col-md-2 firstHeader">First Registration</div>
        <div class="col-md-4 firstData">
            <?php 
                if($Date_OF_First_Registration_Date_Original === NULL)
                    {
                        echo "<p class='error'>No data available</p>";
                    }
                else
                    {
                        echo $New_Date_OF_First_Registration_Date_Original;
                    }
            ?>
        </div>
        <div class="col-md-2 SecondHeader">Date of add</div>
        <div class="col-md-4 SecondData"><?php echo $New_Date_OF_Add; ?></div>
    </div>
 </div>

 <h2>Feature Details</h2>
    <div class="datatable">
    <?php while($row = mysqli_fetch_assoc($query_GetCarFeatures)) { $featureName = $row['Name'];  ?>
        <div class="FirstRow">
            <div class="col-md-3 firstHeader"><?php echo $featureName; ?></div>
        </div>
    <?php } ?>
    </div>



    <h2>Ownership (s)</h2>
    <div class="datatable">
    <?php 
        while($row = mysqli_fetch_assoc($query_GetCarOwnership)) { 
            $Emp_SSN = $row['Emp_SSN']; 
            $Sold_BY = $row['Sold_BY']; 
            $Customer_SSN = $row['Customer_SSN']; 
            $Sold_TO = $row['Sold_TO']; 

            $Original_Price = $row['Original_Price']; 
            $OriginalPrice_Converted = number_format($Original_Price , 0, ',', ' ');
            
            $Sold_Price = $row['Sold_Price']; 
            $SoldPrice_Converted = number_format($Sold_Price , 0, ',', ' ');

            $Deal_Date = $row['Deal_Date'];
            $New_Deal_Date = date("d.m.Y", strtotime($Deal_Date));

            $Deal_Place = $row['Store_Name']; 
            

    ?>
        <div class="FirstRow">
            <div class="col-md-2 firstHeader">Sold To</div>
            <div class="col-md-4 firstData"><?php echo $Customer_SSN.', '.$Sold_TO; ?></div>
            <div class="col-md-2 SecondHeader">Sold By</div>
            <div class="col-md-4 SecondData"><?php echo $Emp_SSN.', '.$Sold_BY; ?></div>
        </div>
        <div class="FirstRow">
            <div class="col-md-2 firstHeader">Original Price</div>
            <div class="col-md-4 firstData"><?php echo $OriginalPrice_Converted.' €'; ?></div>
            <div class="col-md-2 SecondHeader">Deal Price</div>
            <div class="col-md-4 SecondData"><?php echo $SoldPrice_Converted.' €'; ?></div>
        </div>
        <div class="FirstRow">
            <div class="col-md-2 firstHeader">Deal Date</div>
            <div class="col-md-4 firstData"><?php echo $New_Deal_Date; ?></div>
            <div class="col-md-2 SecondHeader">Deal Place</div>
            <div class="col-md-4 SecondData"><?php echo $Deal_Place; ?></div>
        </div>
        <br/>
        <?php } ?>
    </div>
    <div class="row">
        <div class="col-sm-2" ><a href="../../index.php"><button type="button" class="btn">Main Page</button></a></div>
        <div class="col-sm-2" ><a href="../../All_cars.php"><button type="button" class="btn btn-primary">All Cars</button></a></div>
        <div class="col-sm-2" ><a href="../../addnewcar.php"><button type="button" class="btn btn-success">Add new Car</button></a></div>
        <div class="col-sm-2" ><a href="../../addCarImages.php"><button type="button" class="btn btn-info">Add new Image</button></a></div>
        <div class="col-sm-2" ><a href="../../addnewfeatureFOR_CAR.php"><button type="button" class="btn btn-default">Add new Feature</button></a></div>
        <div class="col-sm-2" ><a href="../../addnewcustomer_car.php"><button type="button" class="btn btn-primary">Add new Ownership</button></a></div>
    </div>
 </body>
</html>