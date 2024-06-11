<?php 
  session_start();
  require 'db.php';
  error_reporting(0);
  
   $GetCarsImage= "SELECT VIN, group_concat(i.Image_Name) AS CarImages
   FROM images AS i
    GROUP BY i.VIN";

    //Getting all cars
    $GetAllCars = "SELECT cars.VIN,cars.Number_Plate, concat(brands.Name,' ',cars.Model) AS car,cars.color 
      FROM cars 
      INNER JOIN brands ON cars.Brand_ID = brands.Brand_ID 
      WHERE NOT EXISTS 
      (SELECT * FROM images WHERE cars.VIN = images.VIN)";
    $GetAllCars_Result = mysqli_query($conn,$GetAllCars);


    if(isset($_FILES["image"])){
        $VIN = mysqli_real_escape_string($conn,$_POST['VIN']);
        $message = "";
        $allowedTypes = ["png","jpg","jpeg","webp","jfif"];
        $fileType = strtolower(pathinfo($_FILES["image"]["name"],PATHINFO_EXTENSION));
         //Check Image Extension
        if(!in_array($fileType ,$allowedTypes)){
          $message = "<div class='alert alert-danger'>Image Upload Failed.Invalid Image Format.</div>";
        }
        //Check Image Size greater than 300KB
        elseif($_FILES["image"]["size"]>3074545454200){
          $message = "<div class='alert alert-danger'>Image Upload Failed.Image Size greater than 300KB.</div>";
        }
        //Upload Image
        else{
          $Random = rand(10,99999);
          $fileName = $VIN."_".$Random.".".$fileType;
          //Move image into 'uploads' Folder
          if(move_uploaded_file($_FILES["image"]["tmp_name"],"images/cars/".$fileName)){
            //Save image name in database
            //$sql ="insert into tbl_images(image) values ('{$fileName}')";
            $sql = "INSERT INTO temporary_image (`VIN`,`Image_Name`) VALUES ('$VIN','$fileName')";
            if($conn->query($sql)){
              $message = "<div class='alert alert-success'>Image Upload Successfully.</div>";
                //Will Adding all data into actual image table
            }else{
              $message = "<div class='alert alert-danger'>Image Upload Failed.Try Again.</div>";
            }
          }else{
            $message = "<div class='alert alert-danger'>Image Upload Failed.Try Again.</div>";
          }
        }
      }
   
      
  
?>

<!DOCTYPE html>
<html lang="fi-FI">
<head>
  <title>Cars image</title>
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
<a href="addnewcar.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW CAR</button></a>
<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>VIN</th>
        <th>Image</th>
      </tr>
    </thead>
    <tbody>
      <?php 
            $sql ="select * from temporary_image ORDER BY Row_ID desc";
            $res = $conn->query($sql);
            while($row = $res->fetch_assoc()){
             
                
              $VIN = $row["VIN"];
              $Image_Name = $row["Image_Name"];
              echo "
                <tr>
                  <td>{$VIN}</td>
                  <td><img src='images/cars/{$row["Image_Name"]}' style='height:200px;' ></td>
                  <td>{$Image_Name}</td>
                </tr>
              ";
            }
        ?>
    </tbody>
  </table>
    <form method='post' action='addCarImages.php' enctype='multipart/form-data' >
        <select name="VIN" id="email" class="form-control">
          <option Value=" ">Choose car</option>
        
          <?php 
              // use a while loop to fetch data 
              // from the $all_categories variable 
              // and individually display as an option
              while ($AllCars = mysqli_fetch_array($GetAllCars_Result,MYSQLI_ASSOC)):; 
                      
          ?>
              <option value="<?php echo $AllCars["VIN"];
                  // The value we usually set is the primary key
              ?>">
                  <?php echo  $AllCars["VIN"]." - ".$AllCars["Number_Plate"]." - ".$AllCars["car"]." - ".$AllCars["color"];
                      // To show the category name to the user
                  ?>
              </option>
          <?php 
              endwhile; 
              // While loop must be terminated
          ?>
        </select>
        <div class='form-group'>
            <label>Choose Image</label>
            <input type='file' name='image' required class='form-control'>
        </div>
        <input type='submit' value='Upload to Temporary table' class='btn btn-primary'>
        <br /><br />
        <?php $_SESSION['VIN'] = $VIN; ?>
        <a href="other_Functionality/AddToActualImageTable.php"><p>Verify images and add to Actual Image Table</p></a>
    </form>
    
</div>

</html>

