<?php 
  require 'db.php';

   //SQL query
   $GettingEmployees = "SELECT E.SSN,group_concat(distinct concat_ws(' ',E.F_NAme,E.L_Name)) as EmpName,
      E.Gender, group_concat(distinct concat_ws('',E.Address,' ',E.PostalCode,', ',PC.Region)) as EAddress,
      E.Date_OF_Add FROM employees AS E
   INNER JOIN postalcodes AS PC ON E.PostalCode = PC.PostalCode
   group by E.SSN;";
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL EMPLOYEES</title>
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
<a href="addnewemployee.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW employees</button></a>
<table class="table table-striped">
    <thead>
      <tr>
        <th>SSN</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Employee Added</th>
        
      </tr>
    </thead>
    <tbody>
        <?php 
        $GettingEmployees_Result = $conn->query($GettingEmployees);
        if ($GettingEmployees_Result->num_rows > 0) {
            // output data of each row
            while($row = $GettingEmployees_Result->fetch_assoc()) {
                $SSN = $row["SSN"];
                $E_Name  = $row["EmpName"];
                $Gender  = $row["Gender"];
                $EAddress  = $row["EAddress"];
                $Date_Employee_Add  = $row["Date_OF_Add"];

                echo "<tr>";
                echo "<td>$SSN</td>";
                echo "<td>$E_Name</td>";
                echo "<td>$Gender</td>";
                echo "<td>$EAddress</td>";
                echo "<td>$Date_Employee_Add</td>";
                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>




      
      
    </tbody>
  </table>
</html>