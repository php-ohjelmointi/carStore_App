<?php 
     require 'db.php';
    
    
/* 
  //SQL query employeeID
  $sql_employees = "SELECT * FROM employees";
  $all_sql_employees = mysqli_query($conn,$sql_employees); */

 //SQL query CustomerID
 $sql_customers = "SELECT * FROM customers";
 $all_sql_customers = mysqli_query($conn,$sql_customers);


  if(isset($_POST['addecredentials'])){
    $Customer_ID = mysqli_real_escape_string($conn,$_POST['Customer_ID']);
    /* $Employee_ID = mysqli_real_escape_string($conn,$_POST['Employee_ID']); */
    $Username = mysqli_real_escape_string($conn,$_POST['Username']);
    $Password = mysqli_real_escape_string($conn,$_POST['Password']);

  
    $AddNewCredentials ="INSERT INTO credentials (`Customer_ID`,`Username`,`Password`) 
                        VALUES ('$Customer_ID','$Username','$Password')";

                  $AddNewCredentialsKysely = mysqli_query($conn, $AddNewCredentials) or die (mysqli_error($conn));

                  if($AddNewCredentialsKysely == 1)
                    {
                        header('Location:All_credentials.php');
                    }
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD Credentials</title>
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
  <h2>Add credentials</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <br />
    <div class="ROW">
      <select name="Customer_ID" id="email" class="form-control">
        <option Value=" ">Choose customer</option>
      
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($sql_customers = mysqli_fetch_array($all_sql_customers,MYSQLI_ASSOC)):; 
                    
        ?>
            <option value="<?php echo $sql_customers["Customer_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $sql_customers["Customer_ID"]." - ".$sql_customers["F_Name"]." ".$sql_customers["L_Name"];
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
      <input type="text" class="form-control" id="email" name="Username" placeholder="Username">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="Password" name="Password" placeholder="Password">
    </div>
    <br />


    <button type="submit" name="addecredentials" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


