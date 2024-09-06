
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
<a href="addnewstore.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW STORE</button></a>
    <h6 class="mt-5"><b>Search Car</b></h6>
    <div class="input-group mb-2 mt-1">
         <div class="form-outline">
            <input type="text" style='width:117em;height:3em;padding:10px;' id="getStores" placeholder="Search Cars by Branch, Store Name or Postalcodes"/>
        </div>
    </div>                   
    <table class="table table-striped">
        <thead>
          <tr>
            <th>Store Branch</th>
            <th>Store Name</th>
            <th>Address</th>
            <th>Postalcode</th>
            <th>Date OF ADD</th>
          </tr>
        </thead>
        <tbody id="showdata">
          <?php  
                $sql = "SELECT  s.*,sb.Name AS BranchName,PC.*
                  FROM stores as s
                  INNER JOIN  store_branches as sb ON sb.Branch_Store_ID = s.Branch_Store_ID 
                  INNER JOIN  postalCodes as PC ON PC.PostalCode = s.PostalCode
                  ORDER BY s.Store_Name ASC";
                  $query = mysqli_query($conn,$sql);
                  while($row = mysqli_fetch_assoc($query))
                  {
                    $SID = $row['Store_ID'];

                    echo"<tr>";
                    echo"<td>".$row['BranchName']."</td>";
                    echo"<td><a href='other_Functionality/view/Admin_StorePage.php?SID=$SID'>".$row['Store_Name']."</a></td>";
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
   $('#getStores').on("keyup", function(){
     var getStore = $(this).val();
     $.ajax({
       method:'POST',
       url:'searchFunctions/search_STORES.php',
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