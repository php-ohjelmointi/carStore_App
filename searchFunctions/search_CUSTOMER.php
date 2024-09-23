<?php 
include("../db.php");
$customer = $_POST['name'];

$sql = "SELECT C.*, PC.Region FROM customers AS C
    INNER JOIN  postalCodes as PC ON PC.PostalCode = C.PostalCode
    WHERE C.SSN IS NOT NULL
    OR C.SSN LIKE '%$customer%' 
    OR C.F_Name LIKE '%$customer%' 
    OR C.L_Name LIKE '%$customer%' 
    OR C.Gender LIKE '%$customer%'
    OR C.Nationality LIKE '%$customer%'
    OR PC.PostalCode LIKE '%$customer%'
    OR PC.Region LIKE '%$customer%'
    
    ORDER BY C.Date_OF_Add DESC";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {
        $data .=  "<tr>
            <td>".$row['SSN']."</td>
            <td>".$row['F_Name']." ".$row['L_Name']."</td>
            <td>".$row['Gender']."</td>
            <td>".$row['Nationality']."</td>
            <td>".$row['Address']."</td>
            <td>".$row['PostalCode'].", ".$row['Region']."</td>
            <td>".$row['Date_OF_Add']."</td>
            </tr>";
    }
        echo $data;



?>