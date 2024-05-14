<?php 
include("../db.php");
$car = $_POST['name'];

$sql = "SELECT 
    c.*,
    b.Name,
    b.Brand_ID
FROM cars AS c
INNER JOIN  brands AS b 
ON c.Brand_ID = b.Brand_ID
WHERE c.VIN LIKE '%$car%' 
OR c.Number_Plate LIKE '%$car%'
OR b.Name LIKE '%$car%'
ORDER BY c.Date_OF_Add DESC";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {
        $data .=  "<tr>
            <td>".$row['VIN']."</td>
            <td>".$row['Number_Plate']."</td>
            <td>".$row['Name']." ".$row['Model']."</td>
            <td>".$row['Model_Spec']."</td>
            <td>".$row['Date_OF_Add']."</td>
            </tr>";
    }
        echo $data;



?>