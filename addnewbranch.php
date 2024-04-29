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
    
    
  if(isset($_POST['addbranch'])){

    $Branch_Name = mysqli_real_escape_string($conn,$_POST['Branch_Name']);
    
    $AddNewBranch ="INSERT INTO store_branches (`Name`) 
                    VALUES ('$Branch_Name')";

                  $AddNewBranchKysely = mysqli_query($conn, $AddNewBranch) or die (mysqli_error($conn));

                  if($AddNewBranchKysely == 1)
                  {
                    header('Location:index.php');
                  }
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD NEW BRANCH</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


  <style>
  .ROW{
    display:flex;
  }
  
  </style>
</head>
<body>

<div class="container">
  <h2>Add new branch</h2>
  <br />
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <div class="ROW">

      <input type="text" class="form-control" oninput="this.value = this.value.toUpperCase()" id="email" name="Branch_Name" placeholder="Branch Name">
    </div>
    <br />
    <button type="submit" name="addbranch" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


