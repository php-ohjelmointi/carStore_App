<?php 
   $host = 'localhost:3307';  
   $user = 'root';  
   $pass = 'test123'; 
   $db = "car_store"; 
   $conn = mysqli_connect($host, $user, $pass,$db);  
   if(! $conn )  
   {  
     die('Could not connect: ' . mysqli_error());  
   }  
   echo 'Connected successfully';  
   echo '<br />-------------------------------------------<br />'; 


  //SQL query get Employee Title
  $GettingEmployeeTitle = "SELECT E.SSN,F_Name,E.L_Name,
  T.Name AS TitleName,
  ET.From_Date,ET.To_Date
  FROM employees AS E
   INNER JOIN employee_titles AS ET ON E.Emp_ID = ET.Emp_ID
   INNER JOIN titles AS T ON T.Title_ID = ET.Title_ID";
  
  //SQL query get Employee Salary
  $GettingEmployeeSalary = "SELECT E.SSN,F_Name,E.L_Name,
  ES.Salary,ES.From_Date,ES.To_Date
  FROM employees AS E
   INNER JOIN emp_salaries AS ES ON E.Emp_ID = ES.Emp_ID";

?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL Salary Titles</title>
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
<style>
  .customerEmployeeCredentials{
    display:flex;
    margin-top:5px;
  }

  table {
    width:10em;
    margin-left:20px;
    margin-right:20px;
  }
.headingtext{
  display:flex;
  margin-left:20px;
}

a button {
  text-transform:uppercase;
}

</style>

<body>
<br /><br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addworkingtitle.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW Employee Title</button></a>
<a href="addsalary.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW Employee Salary</button></a>
<br /><br />
<div class="headingtext">
  <h2>Titles<h2>
  <h2 style="margin-left:38em;">Salaries<h2>
</div>

<!-- Customer-->
<div class="customerEmployeeCredentials">
  <table class="table table-striped">
      <thead>
      
        <tr>
          <th>EMP SSN</th>
          <th>Name</th>
          <th>Title</th>
          <th>From</th>
          <th>To</th>
        </tr>
      </thead>
      <tbody>
          <?php 
          $GettingEmployeeTitleResult = $conn->query($GettingEmployeeTitle);
          if ($GettingEmployeeTitleResult->num_rows > 0) {
              // output data of each row
              while($row = $GettingEmployeeTitleResult->fetch_assoc()) {
                  $T_SSN = $row["SSN"];
                  $T_F_Name  = $row["F_Name"];
                  $T_L_Name  = $row["L_Name"];
                  $T_TitleName  = $row["TitleName"];
                  $T_FromDate  = $row["From_Date"];
                  $T_ToDate  = $row["To_Date"];
                  

                  echo "<tr>";
                  echo "<td>$T_SSN</td>";
                  echo "<td>$T_F_Name $T_L_Name</td>";
                  echo "<td> $T_TitleName</td>";
                  echo "<td> $T_FromDate</td>";
                  echo "<td> $T_ToDate</td>";
                  echo "</tr>";
                  
              }
          } else {
        
          }
          ?>
      </tbody>
    </table>

<!-- Employee-->
    <table class="table table-striped">
      <thead>
        <tr>
        <tr>
          <th>EMP SSN</th>
          <th>Name</th>
          <th>Salry</th>
          <th>From</th>
          <th>To</th>
        </tr>
        </tr>
      </thead>
      <tbody>
          <?php 
          $GettingEmployeeSalaryResult = $conn->query($GettingEmployeeSalary);
          if ($GettingEmployeeSalaryResult->num_rows > 0) {
              // output data of each row
              while($row = $GettingEmployeeSalaryResult->fetch_assoc()) {
                $S_SSN = $row["SSN"];
                $S_F_Name  = $row["F_Name"];
                $S_L_Name  = $row["L_Name"];
                $S_Salary  = $row["Salary"];
                $S_FromDate  = $row["From_Date"];
                $S_ToDate  = $row["To_Date"];
                

                echo "<tr>";
                echo "<td>$S_SSN</td>";
                echo "<td>$S_F_Name $S_L_Name</td>";
                echo "<td> $S_Salary</td>";
                echo "<td> $S_FromDate</td>";
                echo "<td> $S_ToDate</td>";
                echo "</tr>";
                  
              }
          } else {
        
          }
          mysqli_close($conn);  
          ?>
      </tbody>
    </table>



</div>

</html>