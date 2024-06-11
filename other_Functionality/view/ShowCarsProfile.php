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
        $Number_Of_Person = $row['Number_Of_Person'];
        $Number_OF_Doors = $row['Number_OF_Doors'];
        
        $TopSpeed = $row['TopSpeed'];
        $Engine_Capacity = $row['Engine_Capacity'];
        $Steering = $row['Steering'];
       
        $Electric_Range = $row['Electric_Range'];
        $Battery_Capacity = $row['Battery_Capacity'];
        $Acceleration = $row['Acceleration'];
       
        $Height = $row['Height'];
        $Width = $row['Width'];
        $Length = $row['Length'];

        $Store_Name = $row['Store_Name'];
        $Date_OF_Add_Original = $row['Date_OF_Add'];
        $New_DateOFAdd = date("d.m.Y", strtotime($Date_OF_Add_Original));  

    }




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
   <div class="carousel-caption">
    <h3>'.$row["VIN"].', '.$row["Number_Plate"].'</h3>
   </div>
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
  <title><?php echo $VIN; ?></title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <style>
    body{
        display:flex;
        width:95%;
        margin-top:10px;
    }

    .container{
        margin-left:5px;
    }
    .datatable{
        width:45%;
        margin-left:10px;
    }
    .FirstRow{
        display: flex;
        font-size:18px;
        height:40px;
    }
    .col-sm-4,.col-sm-8{
        margin-top:7px;
    }
    .FirstRow:nth-child(odd){
        background-color:rgb(229, 228, 226);
    }
    .FirstRow:nth-child(even){
        background-color:rgb(229, 228, 226,0.5);
    }
    #dynamic_slide_show{
        height:68.5em;
    }

    img{
        height:68.5em  !important;
    }
 </style>
<style>
 
</style>
 <body>
  <br /><br />
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
 </body>
 <div class="datatable">
    <div class="FirstRow">
        <div class="col-sm-4">VIN</div>
        <div class="col-sm-8"><?php echo $VIN; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Number Plate</div>
        <div class="col-sm-8"><?php echo $NumberPlate; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Brand</div>
        <div class="col-sm-8"><?php echo $BrandName; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Model</div>
        <div class="col-sm-8"><?php echo $Model.' '.$ModelSpec; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Price</div>
        <div class="col-sm-8"><?php echo $MuokattuTuhannet_ErotaTuhannet_Laske_hinta.' €'; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Year</div>
        <div class="col-sm-8"><?php echo $Year; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Gearbox</div>
        <div class="col-sm-8"><?php echo $Gearbox; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Fuel Type</div>
        <div class="col-sm-8"><?php echo $Fuel_Type; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Mileage, KM</div>
        <div class="col-sm-8"><?php echo $Mileage_New; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Type Of Car</div>
        <div class="col-sm-8"><?php echo $Type_OF_Car; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Type Of Body</div>
        <div class="col-sm-8"><?php echo $Type_OF_Body; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Draw Method</div>
        <div class="col-sm-8"><?php echo $Draw_Method; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Color</div>
        <div class="col-sm-8"><?php echo $Color; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Number Of Person</div>
        <div class="col-sm-8"><?php echo $Number_Of_Person; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Number Of Doors</div>
        <div class="col-sm-8"><?php echo $Number_OF_Doors; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Dimensions (H,W,L) mm</div>
        <div class="col-sm-8"><?php echo $Height.','.$Width.','.$Length; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Top Speed, km/h</div>
        <div class="col-sm-8"><?php echo $TopSpeed; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Engine_Capacity, l</div>
        <div class="col-sm-8"><?php echo $Engine_Capacity; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Steering</div>
        <div class="col-sm-8"><?php echo $Steering; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Electric Range, KM</div>
        <div class="col-sm-8"><?php echo $Electric_Range; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Battery Capacity, kW</div>
        <div class="col-sm-8"><?php echo $Battery_Capacity; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Acceleration (m/s)</div>
        <div class="col-sm-8"><?php echo $Acceleration; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Store</div>
        <div class="col-sm-8"><?php echo $Store_Name; ?></div>
    </div>
    <div class="FirstRow">
        <div class="col-sm-4">Date of Add</div>
        <div class="col-sm-8"><?php echo $New_DateOFAdd; ?></div>
    </div>
 </div>
</html>

    