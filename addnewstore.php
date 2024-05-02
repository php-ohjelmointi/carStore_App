<?php 
      require 'db.php';
    
    //SQL query brands
  $sql_store_branches = "SELECT * FROM store_branches";
  $all_sql_store_branches = mysqli_query($conn,$sql_store_branches);

  //SQL query brands
  $sql_postalcodes = "SELECT * FROM postalcodes";
  $all_sql_postalcodes = mysqli_query($conn,$sql_postalcodes);




  if(isset($_POST['addstore'])){
    $Branch_ID = mysqli_real_escape_string($conn,$_POST['Branch_ID']);
    $Store_Name = mysqli_real_escape_string($conn,$_POST['Store_Name']);
    $Address = mysqli_real_escape_string($conn,$_POST['Address']);
    $Email = mysqli_real_escape_string($conn,$_POST['Email']);
    $Phone= mysqli_real_escape_string($conn,$_POST['Phone']);
    $PostalCode= mysqli_real_escape_string($conn,$_POST['PostalCode']);

    if(empty($_POST['Phone'])){
      $NewPhone = 'NULL';
    }else{
      $NewPhone = $Phone;
    }

    if(empty($_POST['Email'])){
      $NewEmail = 'NULL';
    }else{
      $NewEmail = $Email;
    }

    
    $AddNewStore ="INSERT INTO stores (`Branch_Store_ID`, `Store_Name`, `Address`, `Email`, `Phone`, `PostalCode`) 
                    VALUES ('$Branch_ID','$Store_Name','$Address','$NewEmail','$NewPhone','$PostalCode')";

                  $AddNewStoreKysely = mysqli_query($conn, $AddNewStore) or die (mysqli_error($conn));

                  if($AddNewStoreKysely == 1)
                  {
                    header('Location:All_stores.php');
                  }
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>ADD NEW STORE</title>
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
  <h2>Add new store</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
   

    <div class="ROW">
      <select name="Branch_ID" id="email" class="form-control">
        <?php 
            // use a while loop to fetch data 
            // from the $all_categories variable 
            // and individually display as an option
            while ($store = mysqli_fetch_array(
                    $all_sql_store_branches,MYSQLI_ASSOC)):; 
        ?>
            <option value="<?php echo $store["Branch_Store_ID"];
                // The value we usually set is the primary key
            ?>">
                <?php echo $store["Name"];
                    // To show the category name to the user
                ?>
            </option>
        <?php 
            endwhile; 
            // While loop must be terminated
        ?>
      </select>

      &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Store_Name" placeholder="Store Name">
    </div>
    <br />
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Address" placeholder="Address">
       &nbsp;&nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="Email" placeholder="Email">
    </div>
    <br />
   
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="Phone" placeholder="Phone">
       &nbsp;&nbsp;&nbsp;
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
    <button type="submit" name="addstore" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


