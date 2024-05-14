<?php 
include("../db.php");
$Employee = $_POST['name'];

$sql = "SELECT E.*, PC.* FROM employees AS E
    INNER JOIN  postalCodes as PC ON PC.PostalCode = E.PostalCode
    WHERE E.SSN LIKE '%$Employee%' 
    OR E.F_Name LIKE '%$Employee%' 
    OR E.L_Name LIKE '%$Employee%' 
    OR E.Gender LIKE '%$Employee%'
    OR PC.PostalCode LIKE '%$Employee%'
    OR PC.Region LIKE '%$Employee%'
    ORDER BY E.Date_OF_Add DESC";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {
        $data .=  "<tr>
            <td>".$row['SSN']."</td>
            <td>".$row['F_Name']." ".$row['L_Name']."</td>
            <td>".$row['Gender']."</td>
            <td>".$row['Address']."</td>
            <td>".$row['PostalCode'].", ".$row['Region']."</td>
            <td>".$row['Date_OF_Add']."</td>
            </tr>";
    }
        echo $data;



?>