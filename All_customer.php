
<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Customers</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
</head>
<body>
<?php
require 'db.php';
?>
<!-- <script>

  // Your application has indicated there's an error
  window.setTimeout(function(){
  // Move to a new location or you can do something else
  window.location.href = "All_customer.php";

  }, 50);
</script> -->

<div class="mt-2" style='margin-left:1em;margin-right:1em'>
<a href="index.php"><button type="button" class="btn btn-info">MAIN PAGE</button></a>
<a href="addnewcustomer.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CUSTOMER</button></a>
    <h6 class="mt-5"><b>Search Customers</b></h6>
    <div class="input-group mb-2 mt-1">
         <div class="form-outline">
            <input type="text" style='width:117em;height:3em;padding:10px;' id="getStores" placeholder="Search Customers by SSN, Postalcode, Region OR Name "/>
        </div>
    </div>                   
    <table class="table table-striped">
        <thead>
          <tr>
            <th>SSN</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Nationality</th>
            <th>Address</th>
            <th>Postalcode</th>
            <th>Date OF ADD</th>
            <th>Date OF Update</th>
          </tr>
        </thead>
        <tbody id="showdata">
          <?php  
                $sql = "SELECT C.*, PC.*,CO.Name AS CountryName 
                  FROM customers AS C
                  INNER JOIN  postalCodes AS PC ON PC.PostalCode = C.PostalCode
                  INNER JOIN country AS CO ON CO.Code2 = C.Nationality  
                  WHERE C.SSN IS NOT NULL
                  ORDER BY C.Date_OF_Update DESC";
                  $query = mysqli_query($conn,$sql);
                  while($row = mysqli_fetch_assoc($query))
                  {

                    $date_OF_ADD = date("d.m.Y", strtotime($row['Date_OF_Add']));
                    $date_OF_Update = date("d.m.Y h:m:s", strtotime($row['Date_OF_Update']));

                    echo"<tr>";
                    echo"<td>".$row['SSN']."</td>";
                    echo"<td>".$row['F_Name']." <strong>".$row['L_Name']."</strong></td>";
                    echo"<td>".$row['Gender']."</td>";
                    echo"<td><strong>".$row['Nationality']."</strong> ".$row['CountryName']."</td>";
                    echo"<td>".$row['Address']."</td>";
                    echo"<td><strong>".$row['PostalCode']."</strong>, ".$row['Region']."</td>";
                    echo"<td>". $date_OF_ADD."</td>";
                    echo"<td>".$date_OF_Update."</td>";
                    echo"</tr>";   
                  }
            ?>
        </tbody>
    </table>
</div>
<script>
  $(document).ready(function(){
   $('#getStores').on("keyup", function(){
     var getStore = $(this).val();
     $.ajax({
       method:'POST',
       url:'searchFunctions/search_CUSTOMER.php',
       data:{name:getStore},
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