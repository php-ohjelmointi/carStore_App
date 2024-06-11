<?php 
     require 'db.php';


   //SQL query
   $GettingNumberOFCarsBytype_of_car = "SELECT * FROM percentage_of_cars_by_type_of_car";
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CARS by Type of Car</title>
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
<br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>

<table class="table table-striped">
    <thead>
      <tr>
        <th>Type of car</th>
        <th>Number OF car</th>
        <th>Percentage of All cars</th>
      </tr>
    </thead>
    <tbody>
        <?php 
        $GettingNumberOFCarsBytype_of_carTulos = $conn->query($GettingNumberOFCarsBytype_of_car);
        if ($GettingNumberOFCarsBytype_of_carTulos->num_rows > 0) {
            // output data of each row
            while($row = $GettingNumberOFCarsBytype_of_carTulos->fetch_assoc()) {
                $Type_OF_Car = $row["Type_OF_Car"];
                $NOC  = $row["NOC"];
                $POAC  = $row["POAC"];
               
                echo "<tr>";
                echo "<td>$Type_OF_Car</td>";
                echo "<td>$NOC</td>";
                echo "<td>$POAC</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>