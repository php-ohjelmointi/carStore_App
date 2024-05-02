<?php 
      require 'db.php';
    
    //SQL query employees
  $sql_employees = "SELECT * FROM employees";
  $all_employees= mysqli_query($conn,$sql_employees);


  if(isset($_POST['addcar'])){
    $Comission = mysqli_real_escape_string($conn,$_POST['Comission']);
    $Emp_ID = mysqli_real_escape_string($conn,$_POST['Emp_ID']);
    $From_Date = mysqli_real_escape_string($conn,$_POST['From_Date']);
    $To_Date = mysqli_real_escape_string($conn,$_POST['To_Date']);
    $Salary = mysqli_real_escape_string($conn,$_POST['Salary']);
    

    /*** Date format converting **************************************************/

    //From date
    $orgDate_From = $From_Date;  
    $Converted_Date_From = date("Y-m-d", strtotime($orgDate_From)); 

    //To date
    $orgDate_To_date = $To_Date;  
    $Converted_Date_To = date("Y-m-d", strtotime($orgDate_To_date));  

        $AddSalary ="INSERT INTO emp_salaries (`Emp_ID`,`Salary`,`Deal_Comission`,`From_Date`,`To_Date`) 
          VALUES ('$Emp_ID','$Salary','$Comission','$Converted_Date_From','$Converted_Date_To')";
            $AddSalary_Kysely = mysqli_query($conn, $AddSalary) or die (mysqli_error($conn));
              if($AddSalary_Kysely == 1)
                {
                  header('Location:index.php');
                } 
    }


   
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD NEW Employee Salary</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


  <style>
  .ROW{
    display:flex;
  }

  .form-group{
    width:50%;
  }

  </style>
</head>
<body>

<div class="container">
  <h2>Add Employee Salary</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">

    <div class="ROW">
    <select name="Emp_ID" id="email" class="form-control">
     <?php 
         // use a while loop to fetch data 
         // from the $all_categories variable 
         // and individually display as an option
         while ($sql_employees = mysqli_fetch_array(
                 $all_employees,MYSQLI_ASSOC)):; 
     ?>
         <option value="<?php echo $sql_employees["Emp_ID"];
             // The value we usually set is the primary key
         ?>">
             <?php echo $sql_employees["Emp_ID"]."-".$sql_employees["F_Name"]." ".$sql_employees["L_Name"]." - ".$sql_employees["PostalCode"];
                 // To show the category name to the user
             ?>
         </option>
     <?php 
         endwhile; 
         // While loop must be terminated
     ?>
    </select>
    </div>
    <br />

    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Salary" placeholder="Salary">
       &nbsp;&nbsp;&nbsp;
       <select name="Comission" id="email" class="form-control">
        <option value="#"> Car deal Comossion</option>
        <option value="5">5 %</option>
        <option value="10">10 %</option>
        <option value="20">20 %</option>
        <option value="25">25 %</option>
        <option value="0">No commission Salary</option>
      </select>
    </div>

    <br />
    <div class="ROW">
    <input type="date" class="form-control" id="email" name="From_Date" placeholder="From_Date">
        <br />&nbsp;&nbsp;&nbsp;
    <input type="date" class="form-control" id="email" name="To_Date" placeholder="To_Date">
    </div>

    <br />
    <button type="submit" name="addcar" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


