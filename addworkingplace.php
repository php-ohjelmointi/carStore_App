<?php 
    $host = 'localhost:3307';  
    $user = 'root';  
    $pass = 'test123'; 
    $db = "car_store"; 
    $conn = mysqli_connect($host, $user, $pass,$db);  

    if(!$conn )  
    {  
    die('Could not connect: ' . mysqli_error());  
    }  
    echo 'Connected successfully'; 
    
    //SQL query employees
  $sql_employees = "SELECT * FROM employees";
  $all_employees= mysqli_query($conn,$sql_employees);

    //SQL query stores
  $sql_stores = "SELECT * FROM stores";
  $all_stores = mysqli_query($conn,$sql_stores);


  if(isset($_POST['addcar'])){
    $Store_ID = mysqli_real_escape_string($conn,$_POST['Store_ID']);
    $Emp_ID = mysqli_real_escape_string($conn,$_POST['Emp_ID']);
    $Service_Status= mysqli_real_escape_string($conn,$_POST['Service_Status']);
    $From_Date = mysqli_real_escape_string($conn,$_POST['From_Date']);
    $To_Date = mysqli_real_escape_string($conn,$_POST['To_Date']);
    


    /*** Date format converting **************************************************/

    //From date
    $orgDate_From = $From_Date;  
    $Converted_Date_From = date("Y-m-d", strtotime($orgDate_From)); 

    //To date
    $orgDate_To_date = $To_Date;  
    $Converted_Date_To = date("Y-m-d", strtotime($orgDate_To_date));  

    //Resign Date
    $orgDate_Resign_date = $Resign_date;  
    $Converted_Resign_date = date("Y-m-d", strtotime($orgDate_Resign_date));  

        $AddNewworkingplace ="INSERT INTO stores_employee (`Store_ID`,`Emp_ID`,`From_Date`,`To_Date`,`Service_Status`) 
          VALUES ('$Store_ID','$Emp_ID','$Converted_Date_From','$Converted_Date_To','$Service_Status')";
            $AddNewworkingplace_Kysely = mysqli_query($conn, $AddNewworkingplace) or die (mysqli_error($conn));
              if($AddNewworkingplace_Kysely == 1)
                {
                  header('Location:index.php');
                } 
    }


   
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD NEW working place</title>
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
  <h2>Add new working place</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">

    <div class="ROW">
     
     <select name="Store_ID" id="email" class="form-control">
     <?php 
         // use a while loop to fetch data 
         // from the $all_categories variable 
         // and individually display as an option
         while ($store = mysqli_fetch_array(
                 $all_stores,MYSQLI_ASSOC)):; 
     ?>
         <option value="<?php echo $store["Store_ID"];
             // The value we usually set is the primary key
         ?>">
             <?php echo $store["Store_ID"]."-".$store["Store_Name"]." - ".$store["PostalCode"];
                 // To show the category name to the user
             ?>
         </option>
     <?php 
         endwhile; 
         // While loop must be terminated
     ?>
    </select>
    &nbsp;&nbsp;&nbsp;
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
        <select name="Contract_Type" id="email" class="form-control">
            <option value="#">Contract_Type</option>
            <option value="Permanent">Permanent</option>
            <option value="Temporarry">Temporarry</option>
      </select>
         &nbsp;&nbsp;
      <select name="Service_Status" id="email" class="form-control">
            <option value="#">Service_Status</option>
            <option value="Active">Active</option>
            <option value="Contract ended">Contract ended</option>
            <option value="Got fired">Got fired</option>
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


