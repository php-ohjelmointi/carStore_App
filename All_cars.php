
<!DOCTYPE html>
<html lang="en">
<head>
  <title>PHP MySQL Ajax Live Search</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
</head>
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
          <th>Date OF ADD</th>
          </tr>
        </thead>
        <tbody id="showdata">
          <?php  
                $sql = "SELECT 
                c.*,
                b.Name,
                b.Brand_ID
                FROM cars AS c
                INNER JOIN  brands AS b 
                ON c.Brand_ID = b.Brand_ID
                ORDER BY c.Date_OF_Add DESC";
                  $query = mysqli_query($conn,$sql);
                  while($row = mysqli_fetch_assoc($query))
                {
                  echo"<tr>";
                   echo"<td><strong>".$row['VIN']."</strong></td>";
                   echo"<td><strong>".$row['Number_Plate']."</strong></td>";
                   echo"<td>".$row['Name']." ".$row['Model']."</td>";
                   echo"<td>".$row['Model_Spec']."</td>";
                   echo"<td>".$row['Date_OF_Add']."</td>";
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