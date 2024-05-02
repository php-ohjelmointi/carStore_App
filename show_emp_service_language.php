<?php 
     require 'db.php';


   //SQL query
   $GetEmpServLan= "SELECT E.SSN,E.F_Name,E.L_Name, group_concat(ESL.Language SEPARATOR  ', ') AS EmpServLang
   FROM employee_service_langauge AS ESL
  INNER JOIN employees AS E ON ESL.Emp_ID = E.Emp_ID
  GROUP BY E.SSN";

    //Getting all cars
    $GetAllEmployees = "SELECT * FROM employees";
    $GetAllEmployees_Result = mysqli_query($conn,$GetAllEmployees);

    //Getting all features
    $GetAllFeatures = "SELECT * FROM feature_list";
    $GetAllFeatures_Result = mysqli_query($conn,$GetAllFeatures);

   if(isset($_POST['addnewlanguage'])){

    $Emp_ID = mysqli_real_escape_string($conn,$_POST['Emp_ID']);
    $Language = mysqli_real_escape_string($conn,$_POST['Language']);

    $AddNewEmpLanguageService ="INSERT INTO employee_service_langauge (`Emp_ID`,`Language`) VALUES ('$Emp_ID','$Language')";
    $AddNewEmpLanguageService_Result = mysqli_query($conn, $AddNewEmpLanguageService) or die (mysqli_error($conn));                  
    }
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>Cars/features</title>
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
    .split{
        display:flex;
    }
    .table{
        width:50%;
    }
    form{
        width:40%;
        margin-left:55%;
        margin-top:10px;
        text-align:center;
        position:fixed;
    }
</style>

<body>
<br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewemployee.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW EMPLOYEE</button></a>
<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>SSN</th>
        <th>Name</th>
        <th>Language</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $GetEmpServLan_Result = $conn->query($GetEmpServLan);
        if ($GetEmpServLan_Result->num_rows > 0) {
            // output data of each row
            while($ESL = $GetEmpServLan_Result->fetch_assoc()) {
                
                $SSN = $ESL["SSN"];
                $FName  = $ESL["F_Name"];
                $LName  = $ESL["L_Name"];
                $Language  = $ESL["EmpServLang"];


                echo "<tr>";
                echo "<td>$SSN</td>";
                echo "<td>$FName $LName</td>";
                echo "<td>$Language</td>";

                echo "</tr>";
                
            }
        } else {
      
        }
        mysqli_close($conn);  
        ?>
    </tbody>
  </table>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <h1>Add new feature</h1>
        <select name="Emp_ID" id="email" class="form-control">
        <option Value=" ">Choose employees</option>
      
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($AllEmp = mysqli_fetch_array($GetAllEmployees_Result,MYSQLI_ASSOC)):; 
                    
        ?>
            <option value="<?php echo $AllEmp["Emp_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $AllEmp["Emp_ID"]." - ".$AllEmp["SSN"]." - ".$AllEmp["F_Name"]." ".$AllEmp["L_Name"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>
        <br />
      <select name="Language" id="email" class="form-control">
        <option value="#">Choose Language</option>
        <option value="FIN">finnish</option>
        <option value="ENG">english</option>
        <option value="SWE">swedish</option>
        <option value="DEU">deutchland</option>
        <option value="NOR">norwegian</option>
        <option value="DUT">dutchland</option>
        <option value="RUS">russian</option>
        <option value="EE">estonian</option>
        <option value="DAR">dari</option>
        <option value="FRA">french</option>
        <option value="SPA">spanish</option>
        <option value="ITA">italian</option>
        <option value="JAP">japanese</option>
        <option value="CHI">chineese</option>
        <option value="ARA">arabic</option>
        <option value="THI">thai</option>
        <option value="TUR">turkish</option>
        <option value="TJ">tajiki</option>
        <option value="CHI">chineese</option>
        <option value="PER">persian</option>
        <option value="POR">portogues</option>
        <option value="GRE">greek</option>
        <option value="LUX">luxembourgish</option>
        <option value="POL">polish</option>
        <option value="URD">urdu</option>


    </select>
      
    <br />
    <button type="submit" name="addnewlanguage" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
    </div>

</html>