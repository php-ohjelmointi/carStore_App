
<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Employees</title>
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
    <h6 class="mt-5"><b>Search Employees</b></h6>
    <div class="input-group mb-2 mt-1">
         <div class="form-outline">
            <input type="text" style='width:117em;height:3em;padding:10px;' id="getEmployee" placeholder="Search Customers by SSN, Postalcode, Region OR Name "/>
        </div>
    </div>                   
    <table class="table table-striped">
        <thead>
          <tr>
            <th>SSN</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Address</th>
            <th>Postalcode</th>
            <th>Date OF ADD</th>
          </tr>
        </thead>
        <tbody id="showdata">
          <?php  
                $sql = "SELECT E.*, PC.* FROM employees AS E
                  INNER JOIN  postalCodes as PC ON PC.PostalCode = E.PostalCode ORDER BY E.Date_OF_Add DESC";
                  $query = mysqli_query($conn,$sql);
                  while($row = mysqli_fetch_assoc($query))
                  {
                    echo"<tr>";
                    echo"<td>".$row['SSN']."</td>";
                    echo"<td>".$row['F_Name'].", ".$row['L_Name']."</td>";
                    echo"<td>".$row['Gender']."</td>";
                    echo"<td>".$row['Address']."</td>";
                    echo"<td>".$row['PostalCode'].", ".$row['Region']."</td>";
                    echo"<td>".$row['Date_OF_Add']."</td>";
                    echo"</tr>";   
                  }
            ?>
        </tbody>
    </table>
</div>
<script>
  $(document).ready(function(){
   $('#getEmployee').on("keyup", function(){
     var getEmployee = $(this).val();
     $.ajax({
       method:'POST',
       url:'searchFunctions/search_EMPLOYEE.php',
       data:{name:getEmployee},
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