<?php 
   require 'db.php';


   //SQL query
   $Getting_All_Cars_Deal = "SELECT CS.VIN,CA.Number_Plate,B.Name As BrandName,CA.Model,E.SSN AS Emp_SSN,
    concat(E.F_Name,' ',E.L_Name) AS Sold_BY, 
    CU.SSN AS Customer_SSN,concat(CU.F_Name,' ',CU.L_Name) AS Sold_TO,
    CS.Original_Price,CS.Sold_Price, CS.Sold_Date AS Deal_Date,S.Store_Name
     FROM carsold AS CS
        INNER JOIN employees AS E ON E.Emp_ID = CS.Sold_By
        INNER JOIN customers AS CU ON CU.Customer_ID = CS.Sold_To
        INNER JOIN cars AS CA ON CA.VIN =  CS.VIN
        INNER JOIN brands AS B ON B.Brand_ID =  CA.Brand_ID
        INNER JOIN stores AS S ON S.Store_ID =  CA.Store_ID";
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL CARS</title>
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
<a href="addnewcustomer_car.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR DEAL</button></a>
<table class="table table-striped">
    <thead>
      <tr>
        <th>VIN</th>
        <th>Number_Plate</th>
        <th>Car</th>
        <th>Sold_BY</th>
        <th>Sold_To</th>
        <th>Original Price</th>
        <th>Sold Price</th>
        <th>Deal_Place</th>
        <th>Deal_Date</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $Getting_All_Cars_Deal_Result = $conn->query($Getting_All_Cars_Deal);
        if ($Getting_All_Cars_Deal_Result->num_rows > 0) {
            // output data of each row
            while($row = $Getting_All_Cars_Deal_Result->fetch_assoc()) {
                $VIN = $row["VIN"];
                $Number_Plate  = $row["Number_Plate"];
                $BrandName  = $row["BrandName"];
                $Model  = $row["Model"];
                $Emp_SSN  = $row["Emp_SSN"];
                $Sold_BY  = $row["Sold_BY"];
                $Customer_SSN  = $row["Customer_SSN"];
                $Sold_To  = $row["Sold_TO"];
                $Original_Price  = $row["Original_Price"];
                $Sold_Price  = $row["Sold_Price"];
                $Deal_Date  = $row["Deal_Date"];
                $Deal_Place  = $row["Store_Name"];


                echo "<tr>";
                echo "<td>$VIN</td>";
                echo "<td>$Number_Plate</td>";
                echo "<td> $BrandName $Model</td>";
                echo "<td> $Emp_SSN, $Sold_BY</td>";
                echo "<td> $Customer_SSN, $Sold_To</td>";
                echo "<td> $Original_Price</td>";
                echo "<td> $Sold_Price</td>";
                echo "<td> $Deal_Place</td>";
                echo "<td> $Deal_Date</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>