<?php 
      require 'db.php';
    

  //SQL query employeeCredentials
  $sql_credentials_EMP = "SELECT * FROM credentials WHERE EMP_ID IS NOT NULL";
  $all_sql_credentials_EMP = mysqli_query($conn,$sql_credentials_EMP); 

   //SQL query CustomerCredentials
   $sql_credentials_Cust = "SELECT * FROM credentials WHERE Customer_ID IS NOT NULL";
   $all_sql_credentials_Cust = mysqli_query($conn,$sql_credentials_Cust); 


  if(isset($_POST['addecredentials_log'])){
    
    $Credentials_ID = mysqli_real_escape_string($conn,$_POST['Credentials_ID']); 
    $date = mysqli_real_escape_string($conn,$_POST['date']); 
  
    $Foreign_KEY_Checks ="SET FOREIGN_KEY_CHECKS = OFF";
    $Foreign_KEY_Checks_Kysely = mysqli_query($conn, $Foreign_KEY_Checks) or die (mysqli_error($conn));
        if($Foreign_KEY_Checks_Kysely == 1)
        {
            $AddNewCredentials ="INSERT INTO credentials_logs (`Credentials_ID`,`Date`) VALUES ('$Credentials_ID','$date')";
                $AddNewCredentialsKysely = mysqli_query($conn, $AddNewCredentials) or die (mysqli_error($conn));
                  if($AddNewCredentialsKysely == 1)
                    {
                        header('Location:credentialslogs.php');
                    }
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
  <h2>Add credentials lOG</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <br />
    <div class="ROW">
    <select name="Credentials_ID" id="email" class="form-control">
        <option Value=" ">Choose employee</option>
      
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($sql_credentials_EMP = mysqli_fetch_array(
                    $all_sql_credentials_EMP,MYSQLI_ASSOC)):; 
                    
        ?>
            <option value="<?php echo $sql_credentials_EMP["Credentials_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $sql_credentials_EMP["Credentials_ID"]." - (".$sql_credentials_EMP["Emp_ID"].") - ".$sql_credentials_EMP["Username"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>
      &nbsp; &nbsp;&nbsp;
      <select name="Credentials_ID" id="email" class="form-control">
        <option Value=" ">Choose customer</option>
      
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($sql_credentials_Cust = mysqli_fetch_array(
                    $all_sql_credentials_Cust,MYSQLI_ASSOC)):; 
                    
        ?>
            <option value="<?php echo $sql_credentials_Cust["Credentials_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $sql_credentials_Cust["Credentials_ID"]." - (".$sql_credentials_Cust["Customer_ID"].") - ".$sql_credentials_Cust["Username"];
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
      <input type="date" class="form-control" id="email" name="date" placeholder="date">
    </div>
    <br />


    <button type="submit" name="addecredentials_log" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


