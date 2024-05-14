
<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Employees Working Places</title>
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
<a href="addnewemployee.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW EMPLOYEES</button></a>
<a href="addworkingplace.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW EMPLOYEES WORKING PLACES</button></a>
    <h6 class="mt-5"><b>Search working places</b></h6>
    <div class="input-group mb-2 mt-1">
         <div class="form-outline">
            <input type="text" style='width:117em;height:3em;padding:10px;' id="getWorkingPlaces" placeholder="Search Customers by SSN, Name, StoreName OR Name "/>
        </div>
    </div>                   
    <table class="table table-striped">
        <thead>
          <tr>
            <th>SSN</th>
            <th>Name</th>
            <th>Store Name</th>
            <th>From</th>
            <th>To</th>
            
          </tr>
        </thead>
        <tbody id="showdata">
          <?php  
                $sql = "SELECT * FROM employee_with_active_contract";
                  $query = mysqli_query($conn,$sql);
                  while($row = mysqli_fetch_assoc($query))
                  {
                    echo"<tr>";
                        echo"<td><strong>".$row['SSN']."</strong></td>";
                        echo"<td>".$row['EmployeeName']."</td>";
                        echo"<td>".$row['Store_Name']."</td>";
                        echo"<td>".$row['From_Date']."</td>";
                        echo"<td>".$row['To_Date']."</td>";
                    echo"</tr>";   
                  }
            ?>
        </tbody>
    </table>
</div>
<script>
  $(document).ready(function(){
   $('#getWorkingPlaces').on("keyup", function(){
     var getWorkingPlaces = $(this).val();
     $.ajax({
       method:'POST',
       url:'searchFunctions/search_WORKINGPLACES.php',
       data:{name:getWorkingPlaces},
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