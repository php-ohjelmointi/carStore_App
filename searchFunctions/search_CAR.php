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
        $VIN = $row['VIN'];

        $Date_OF_Add_Original = $row['Date_OF_Add'];
        $New_DateOFAdd = date("d.m.Y", strtotime($Date_OF_Add_Original)); 

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
            <td style='text-align:right;'>".$MuokattuTuhannet_ErotaTuhannet_Laske_hinta."&nbsp;<strong>€</strong></td>
            <td style='text-align:center;'>".$New_DateOFAdd."</td>
            <td>
                <a href='other_Functionality/view/ShowCarsProfile.php?VIN=$VIN'><img src='./images/icons/car.png'></a>
                <a href='other_Functionality/updates/Update_car.php?VIN=$VIN'><img src='./images/icons/user-pen.svg'></a>
                <a href='other_Functionality/delete/delete_car.php?VIN=$VIN'><img src='./images/icons/trash-bin.png' ></a>
            </td>
            </tr>";
    }
        echo $data;
?>