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
OR c.Gearbox LIKE '%$car%'
OR c.Type_OF_Body LIKE '%$car%'
OR c.Fuel_type LIKE '%$car%'
OR c.Color LIKE '%$car%'
OR c.Draw_Method LIKE '%$car%'
ORDER BY c.Date_OF_Add DESC";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {
        //Erotellaan tuhannesosat
        $ErotaTuhannet_Laske_hinta = $row['Price'];
        $MuokattuTuhannet_ErotaTuhannet_Laske_hinta = number_format($ErotaTuhannet_Laske_hinta , 2, ',', ' '); 


        $data .=  "<tr>
            <td>".$row['VIN']."</td>
            <td>".$row['Number_Plate']."</td>
            <td>".$row['Name']." ".$row['Model']."</td>
            <td>".$row['Model_Spec']."</td>
            <td>".$row['Gearbox']."</td>
            <td>".$row['Fuel_Type']."</td>
            <td>".$row['Type_OF_Body']."</td>
            <td>".$row['Color']."</td>
            <td>".$row['Draw_Method']."</td>
            <td>".$MuokattuTuhannet_ErotaTuhannet_Laske_hinta."</td>
            <td>".$row['Date_OF_Add']."</td>
            </tr>";
    }
        echo $data;
?>