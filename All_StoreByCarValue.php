<?php 
  require 'db.php';

  //SQL query
  $GettingStoresByCarsValue = "SELECT * FROM store_by_cars_value ORDER BY carValuePrice DESC";

?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CARS by Fuel Type</title>
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
        <th>Store Name</th>
        <th>Value OF car</th>
      </tr>
    </thead>
    <tbody>
        <?php 
        $GettingStoresByCarsValueTulos = $conn->query($GettingStoresByCarsValue);
        if ($GettingStoresByCarsValueTulos->num_rows > 0) {
            // output data of each row
            while($row = $GettingStoresByCarsValueTulos->fetch_assoc()) {
                $Store_Name = $row["Store_Name"];

                //Erotellaan tuhannesosat
                $ErotaTuhannet_Laske_Summa = $row['carValuePrice'];
                $MuokattuTuhannet_ErotaTuhannet_Laske_hinta = number_format($ErotaTuhannet_Laske_Summa , 0, ',', ' '); 

    
                echo "<tr>";
                echo "<td>$Store_Name</td>";
                    if($row['carValuePrice'] < 50000 && $row['carValuePrice'] > 0)
                        {
                            echo "<td style='color:red;'>$MuokattuTuhannet_ErotaTuhannet_Laske_hinta <strong>€</strong></td>";
                        }
                    else if($row['carValuePrice'] > 50000 && $row['carValuePrice'] < 200000)
                        {
                            echo "<td style='color:orange;'>$MuokattuTuhannet_ErotaTuhannet_Laske_hinta <strong>€</strong></td>";
                        }
                    else if($row['carValuePrice'] > 200000)
                        {
                            echo "<td style='color:green;'>$MuokattuTuhannet_ErotaTuhannet_Laske_hinta <strong>€</strong></td>";
                        }
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>