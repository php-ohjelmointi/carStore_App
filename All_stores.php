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
   $GettingStores = "SELECT  s.*,sb.Name AS BranchName FROM stores as s
        INNER JOIN  store_branches as sb
        ON sb.Branch_Store_ID = s.Branch_Store_ID 
        ORDER BY s.Date_OF_Add DESC";
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL STORES</title>
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


<body>
<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewstore.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW STORE</button></a>
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
    <tbody>
        <?php 
        $GettingStores_Result = $conn->query($GettingStores);
        if ($GettingStores_Result->num_rows > 0) {
            // output data of each row
            while($row = $GettingStores_Result->fetch_assoc()) {
                $Brach_Name = $row["BranchName"];
                $Store_Name  = $row["Store_Name"];
                $Address  = $row["Address"];
                $Postalcode  = $row["PostalCode"];
                $Date_OF_Add  = $row["Date_OF_Add"];

                echo "<tr>";
                echo "<td>$Brach_Name</td>";
                echo "<td>$Store_Name</td>";
                echo "<td>$Address</td>";
                echo "<td>$Postalcode</td>";
                echo "<td>$Date_OF_Add</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>