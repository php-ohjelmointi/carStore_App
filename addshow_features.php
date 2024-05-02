<?php 
  require 'db.php';

   //SQL query
   $GetFeatures= "SELECT * FROM feature_list order by Feature_ID DESC";

   if(isset($_POST['addefeature'])){

    $Feature = mysqli_real_escape_string($conn,$_POST['Feature']);

    $AddNewFeature ="INSERT INTO feature_list (`Name`) VALUES ('$Feature')";

                  $AAddNewFeature_Result = mysqli_query($conn, $AddNewFeature) or die (mysqli_error($conn));

                  
    }
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>ALL FEATURES</title>
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
        margin-left:50px;
        margin-top:10px;
        text-align:center;
    }
</style>

<body>
<br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addnewfeature.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW FEATURE</button></a>
<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>Feature ID</th>
        <th>Feature Name</th>
      </tr>
    </thead>
    <tbody>

        <?php 
        $GetFeatures_Result = $conn->query($GetFeatures);
        if ($GetFeatures_Result->num_rows > 0) {
            // output data of each row
            while($row = $GetFeatures_Result->fetch_assoc()) {
                $Feature_ID = $row["Feature_ID"];
                $Feature_Name  = $row["Name"];
           

                echo "<tr>";
                echo "<td>$Feature_ID</td>";
                echo "<td>$Feature_Name</td>";
          
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
        <input type="text" class="form-control" id="Password" name="Feature" placeholder="Add new Feature">
    <br />


    <button type="submit" name="addefeature" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
    </div>

</html>