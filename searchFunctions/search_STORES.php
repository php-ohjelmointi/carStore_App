<?php 
include("../db.php");
$store = $_POST['name'];

$sql = "SELECT  s.*,sb.Name AS BranchName,PC.Region
FROM stores as s
INNER JOIN  store_branches as sb ON sb.Branch_Store_ID = s.Branch_Store_ID 
INNER JOIN  postalCodes as PC ON PC.PostalCode = s.PostalCode
WHERE sb.Name LIKE '%$store%'
OR s.Store_Name LIKE '%$store%'
OR s.PostalCode LIKE '%$store%'
ORDER BY s.Date_OF_Add DESC";  

   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {
        $data .=  "<tr>
            <td>".$row['BranchName']."</td>
            <td>".$row['Store_Name']."</td>
            <td>".$row['Address']."</td>
            <td>".$row['PostalCode'].", ".$row['Region']."</td>
            <td>".$row['Date_OF_Add']."</td>
            </tr>";
    }
        echo $data;
        
?>