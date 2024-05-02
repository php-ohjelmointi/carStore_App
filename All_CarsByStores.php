<?php 
     require 'db.php';


   //SQL query
   $GettingNumberOFCarsByStores = "SELECT * FROM number_of_cars_by_stores";
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CARS by stores</title>
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
<a href="addnewcar.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR</button></a>
<a href="addnewstore.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW STORE</button></a>

<table class="table table-striped">
    <thead>
      <tr>
        <th>Number OF Cars</th>
        <th>Percentage OF all cars</th>
        <th>Store Name</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $GettingNumberOFCarsByStoresTulos = $conn->query($GettingNumberOFCarsByStores);
        if ($GettingNumberOFCarsByStoresTulos->num_rows > 0) {
            // output data of each row
            while($row = $GettingNumberOFCarsByStoresTulos->fetch_assoc()) {
                $Number_OF_Cars = $row["Number_OF_Cars"];
                $Store_Name  = $row["Store_Name"];
                $POAC  = $row["POAC"];
               
                echo "<tr>";
                echo "<td>$Number_OF_Cars</td>";
                echo "<td>$POAC</td>";
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