
<!DOCTYPE html>
<html lang="en">
<head>
  <title>PHP MySQL Ajax Live Search</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
</head>

<style>
  img {
    height: 20px;
    cursor: pointer;
  }

  

</style>


<body>
<?php
require 'db.php';
?>

<div class="mt-2" style='margin-left:1em;margin-right:1em'>
<a href="index.php"><button type="button" class="btn btn-info">MAIN PAGE</button></a>
<a href="addnewcar.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR</button></a>
    <h6 class="mt-5"><b>Search Car</b></h6>
    <div class="input-group mb-2 mt-1">
         <div class="form-outline">
            <input type="text" style='width:117em;height:3em;padding:10px;' id="getCar" placeholder="Search Cars by VIN, Number Plate, Brand or Model"/>
        </div>
    </div>                   
    <table class="table table-striped">
        <thead>
          <tr>
          <th>VIN</th>
          <th>Number_Plate</th>
          <th>Brand Model</th>
          <th>Model Spec</th>
          <th>Gearbox</th>
          <th>Fuel Type</th>
          <th>Body Type</th>
          <th>Color</th>
          <th>Driving</th>
          <th>Price</th>
          <th>Date OF ADD</th>
          </tr>
        </thead>
        <tbody id="showdata">
          <?php  

              //Getting all cars
                $GetAllCars_Image = "SELECT cars.VIN,cars.Number_Plate, concat(brands.Name,' ',cars.Model) AS car,cars.color 
                FROM cars 
                INNER JOIN brands ON cars.Brand_ID = brands.Brand_ID 
                WHERE EXISTS 
                (SELECT * FROM images WHERE cars.VIN = images.VIN)";
                  $GetAllCars_Image_Result = mysqli_query($conn,$GetAllCars_Image);
                  while($row = mysqli_fetch_assoc($GetAllCars_Image_Result))
                  {

                  }




                $sql = "SELECT 
                c.*,
                b.Name,
                b.Brand_ID
                FROM cars AS c
                INNER JOIN  brands AS b 
                ON c.Brand_ID = b.Brand_ID
                ORDER BY c.Date_OF_Add DESC";
                  $query = mysqli_query($conn,$sql);
                  while($row = mysqli_fetch_assoc($query) )
                    {
                      //Erotellaan tuhannesosat
                      $ErotaTuhannet_Laske_hinta = $row['Price'];
                      $MuokattuTuhannet_ErotaTuhannet_Laske_hinta = number_format($ErotaTuhannet_Laske_hinta , 0, ',', ' '); 

                      $gearboxICON = '';
                      if($row['Gearbox'] == 'Automatic'){
                        $gearboxICON = '<img src="./images/icons/gearbox_automatic.png" alt="Random image" ,width=50px, height=30px />';
                      }else if($row['Gearbox'] == 'Manual'){
                        $gearboxICON = '<img src="./images/icons/gearbox_manual.png" alt="Random image" ,width=50px, height=30px />';
                      } 


                      $Date_OF_Add_Original = $row['Date_OF_Add'];
                      $New_DateOFAdd = date("d.m.Y", strtotime($Date_OF_Add_Original));  


                      $VIN = $row['VIN'];

                      echo"<tr>";
                      echo"<td><a href='other_Functionality/view/ShowCarsProfile.php?VIN=$VIN'>".$VIN."</a></td>";
                      echo"<td>".$row['Number_Plate']."</td>";
                      echo"<td>".$row['Name']." ".$row['Model']."</td>";
                      echo"<td>".$row['Model_Spec']."</td>";
                      echo"<td>".$row['Gearbox']."</td>";
                      echo"<td>".$row['Fuel_Type']."</td>";
                      echo"<td>".$row['Type_OF_Body']."</td>";
                      echo"<td>".$row['Color']."</td>";
                      echo"<td>".$row['Draw_Method']."</td>";
                      echo"<td style='text-align:right;'>".$MuokattuTuhannet_ErotaTuhannet_Laske_hinta."&nbsp;<strong>€</strong></td>";
                      echo"<td style='text-align:center;'>".$New_DateOFAdd."</td>";
                      echo"</tr>";   
                    }
            ?>
        </tbody>
    </table>
</div>
<script>
  $(document).ready(function(){
   $('#getCar').on("keyup", function(){
     var getCar = $(this).val();
     $.ajax({
       method:'POST',
       url:'searchFunctions/search_CAR.php',
       data:{name:getCar},
       success:function(response)
       {
            $("#showdata").html(response);
       } 
     });
   });
  });
</script>
</body>
</html>