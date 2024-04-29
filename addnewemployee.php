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
    
    

  //SQL query postalcodes
  $sql_postalcodes = "SELECT * FROM postalcodes";
  $all_sql_postalcodes = mysqli_query($conn,$sql_postalcodes);

 


  if(isset($_POST['addemployee'])){
    $SSN = mysqli_real_escape_string($conn,$_POST['SSN']);
    $F_Name = mysqli_real_escape_string($conn,$_POST['F_Name']);
    $L_Name = mysqli_real_escape_string($conn,$_POST['L_Name']);
    $Gender = mysqli_real_escape_string($conn,$_POST['Gender']);
    $Phone= mysqli_real_escape_string($conn,$_POST['Phone']);
    $Email = mysqli_real_escape_string($conn,$_POST['Email']);
    $Address = mysqli_real_escape_string($conn,$_POST['Address']);
    $PostalCode= mysqli_real_escape_string($conn,$_POST['PostalCode']);
 
 
    $AddNewEmployee ="INSERT INTO employees (`SSN`, `F_Name`, `L_Name`, `Gender`, `Phone`, `Email`, `Address`, `PostalCode`) 
                    VALUES ('$SSN','$F_Name','$L_Name','$Gender','$Phone','$Email','$Address','$PostalCode')";
    $AddNewEmployeeKysely = mysqli_query($conn, $AddNewEmployee) or die (mysqli_error($conn));

    $AddNewEmployee ="INSERT INTO employees (`SSN`, `F_Name`, `L_Name`, `Gender`, `Phone`, `Email`, `Address`, `PostalCode`) 
                    VALUES ('$SSN','$F_Name','$L_Name','$Gender','$Phone','$Email','$Address','$PostalCode')";
    $AddNewEmployeeKysely = mysqli_query($conn, $AddNewEmployee) or die (mysqli_error($conn));



    $FOREIGN_KEY_CHECKS ="SET FOREIGN_KEY_CHECKS = OFF";

        $FOREIGN_KEY_CHECKS_QUERY = mysqli_query($conn, $FOREIGN_KEY_CHECKS) or die (mysqli_error($conn));

            if($FOREIGN_KEY_CHECKS_QUERY == 1) {
                    if($AddNewEmployeeKysely == 1)
                        {
                            header('Location:All_employees.php');
                        }
            }

                 
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD NEW Employee</title>
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
  <h2>Add new employee</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
   
    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="SSN" placeholder="SSN">
       &nbsp;&nbsp;&nbsp;
    </div>
    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="F_Name" placeholder="F_Name">
       &nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="L_Name" placeholder="L_Name">
    </div>
    <br />


    <div class="ROW">
      <select name="Gender" id="email" class="form-control">
        <option value="#">Gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
      </select>
       &nbsp;&nbsp;&nbsp;
       <input type="text" class="form-control" id="email" name="Phone" placeholder="Phone">
    </div>
    <br />


    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Address" placeholder="Address">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Email" placeholder="Email">
    </div>
    <br />

   
    <div class="ROW">
       <select name="PostalCode" id="email" class="form-control">
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($postalcode = mysqli_fetch_array(
                    $all_sql_postalcodes,MYSQLI_ASSOC)):; 
        ?>
            <option value="<?php echo $postalcode["PostalCode"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $postalcode["PostalCode"]." - ".$postalcode["Region"];
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

    <button type="submit" name="addemployee" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


