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
   echo '<br />-------------------------------------------<br />'; 


   //SQL query
   $GettingBranches = "SELECT  * FROM store_branches";
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL BRANCHES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Maven+Pro&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/761c60ba3b.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
    body{
        width:70%;
        margin: auto;
        padding:auto;
    }    
</style>

<body>
<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewbranch.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW BRANCH</button></a>
<table class="table table-striped">
    <thead>
      <tr>
        <th>Branch ID</th>
        <th>Branch Name</th>
   
      </tr>
    </thead>
    <tbody>
        <?php 
        $GettingBranches_Result = $conn->query($GettingBranches);
        if ($GettingBranches_Result->num_rows > 0) {
            // output data of each row
            while($row = $GettingBranches_Result->fetch_assoc()) {
                $Brach_ID = $row["Branch_Store_ID"];
                $Store_Name  = $row["Name"];
           
                echo "<tr>";
                echo "<td>$Brach_ID</td>";
                echo "<td>$Store_Name</td>";
                echo "</tr>";
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>