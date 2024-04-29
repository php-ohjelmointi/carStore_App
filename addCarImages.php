<?php 
   //error_reporting(0);
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
   echo '<br />-------------------------------------------<br />'; 

   $GetCarsImage= "SELECT VIN, group_concat(i.Image_Name) AS CarImages
   FROM images AS i
    GROUP BY i.VIN";

    //Getting all cars
    $GetAllCars = "SELECT 
        c.VIN,
        c.Number_Plate,
        b.Name AS BrandName,
        c.Model
    FROM cars AS c
        INNER JOIN  brands AS b 
        ON c.Brand_ID = b.Brand_ID
        ORDER BY c.Date_OF_Add DESC";
    $GetAllCars_Result = mysqli_query($conn,$GetAllCars);


    if(isset($_FILES["image"])){
        $VIN = mysqli_real_escape_string($conn,$_POST['VIN']);
        $message = "";
        $allowedTypes = ["png","jpg","jpeg"];
        $fileType = strtolower(pathinfo($_FILES["image"]["name"],PATHINFO_EXTENSION));
         //Check Image Extension
        if(!in_array($fileType ,$allowedTypes)){
          $message = "<div class='alert alert-danger'>Image Upload Failed.Invalid Image Format.</div>";
        }
        //Check Image Size greater than 300KB
        elseif($_FILES["image"]["size"]>307200){
          $message = "<div class='alert alert-danger'>Image Upload Failed.Image Size greater than 300KB.</div>";
        }
        //Upload Image
        else{
          $Random = rand(10,99999);
          $fileName = $VIN."_".$Random.".".$fileType;
          //Move image into 'uploads' Folder
          if(move_uploaded_file($_FILES["image"]["tmp_name"],"cars/".$fileName)){
            //Save image name in database
            //$sql ="insert into tbl_images(image) values ('{$fileName}')";
            $sql = "INSERT INTO images (`VIN`,`Image_Name`) VALUES ('$VIN','$fileName')";
            if($conn->query($sql)){
              $message = "<div class='alert alert-success'>Image Upload Successfully.</div>";
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
        margin-top:-50%;
        text-align:center;
        position:fixed;
    }
</style>
</style>

<body>
<br />
<a href="index.php"><button type="button" class="btn btn-default btn-xs">MAIN PAGE</button></a>
<a href="addshow_features.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW feature</button></a>
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
            $sql ="select * from images";
            $res = $conn->query($sql);
            $i=0;
            while($row = $res->fetch_assoc()){
                
              $VIN = $row["VIN"];
              $Image_Name = $row["Image_Name"];
              echo "
                <tr>
                  <td>{$VIN}</td>
                  <td><img src='cars/{$row["Image_Name"]}' style='height:80px;' ></td>
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
                <?php echo $AllCars["Number_Plate"]." - ".$AllCars["BrandName"]." ".$AllCars["Model"];
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
        <input type='submit' name='submit' value='Submit' class='btn btn-primary'>
    </form>


</div>

</html>