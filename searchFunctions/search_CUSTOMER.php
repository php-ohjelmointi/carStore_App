<?php 
include("../db.php");
$SearchParameter = $_POST['name'];

$sql = "SELECT C.*, PC.*,CO.Name AS CountryName 
FROM customers AS C
    INNER JOIN  postalCodes as PC ON PC.PostalCode = C.PostalCode
    INNER JOIN country AS CO ON CO.Code2 = C.Nationality
    WHERE C.SSN IS NOT NULL
    OR C.SSN LIKE '%$SearchParameter%' 
    OR C.F_Name LIKE '%$SearchParameter%' 
    OR C.L_Name LIKE '%$SearchParameter%' 
    OR C.Gender LIKE '%$SearchParameter%'
    OR C.Nationality LIKE '%$SearchParameter%'
    OR PC.PostalCode LIKE '%$SearchParameter%'
    OR PC.Area LIKE '%$SearchParameter%'
    OR PC.Region LIKE '%$SearchParameter%'
    ORDER BY C.Date_OF_Add DESC LIMIT 50";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {

        $date_OF_ADD = date("d.m.Y", strtotime($row['Date_OF_Add']));
        $date_OF_Update = date("d.m.Y h:m:s", strtotime($row['Date_OF_Update']));

        if($row['Address'] === NULL){
            $CustomAddressMessage = "No Address Yet";
        }else{
            $CustomAddressMessage = $row['Address'];
        }

        $data .=  "<tr>
            <td>".$row['SSN']."</td>
            <td>".$row['F_Name']." <strong>".$row['L_Name']."</strong></td>
            <td>".$row['Email']."</td>
            <td>".$row['Gender']."</td>
            <td>".$row['Nationality']." <strong>".$row['CountryName']."</strong></td>
            <td>".$CustomAddressMessage."</td>
            <td><strong>".$row['PostalCode']."</strong>, ".$row['Area']." <span class='regionUppercase'>".$row['Region']."</span></td>
            <td>".$date_OF_ADD."</td>
            <td>".$date_OF_Update."</td>
            </tr>";
    }
        echo $data;



?>