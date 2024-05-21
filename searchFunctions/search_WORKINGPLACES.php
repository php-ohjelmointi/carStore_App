<?php 
include("../db.php");
$WorkingPlaces = $_POST['name'];

$sql = "SELECT * FROM employee_with_active_contract WHERE SSN LIKE '%$WorkingPlaces%' 
    OR EmployeeName LIKE '%$WorkingPlaces%' OR Store_Name LIKE '%$WorkingPlaces%'
    OR Service_Status LIKE '%$WorkingPlaces%'  OR Contract_Type LIKE '%$WorkingPlaces%'";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
    {
        $data .= 
            "<tr>
                <td>".$row['SSN']."</td>
                <td>".$row['EmployeeName']."</td>
                <td>".$row['Store_Name']."</td>
                <td>".$row['From_Date']."</td>
                <td>".$row['To_Date']."</td>
                <td>".$row['Service_Status']."</td>
                <td>".$row['Contract_Type']."</td>
            </tr>";
    }
        echo $data;



?>