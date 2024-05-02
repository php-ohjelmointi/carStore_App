<?php 
     require 'db.php';

   
    //Getting all cars
    $GetAllStores = "SELECT * FROM stores;";
    $GetAllStores_Result = mysqli_query($conn,$GetAllStores);


    if(isset($_FILES["image"])){
        $Store_ID = mysqli_real_escape_string($conn,$_POST['Store_ID']);
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
          $fileName = $Store_ID.".".$fileType;
          //Move image into 'uploads' Folder
          if(move_uploaded_file($_FILES["image"]["tmp_name"],"images/stores/".$fileName)){
            //Save image name in database
            //$sql ="insert into tbl_images(image) values ('{$fileName}')";
            $sql = "INSERT INTO images (`Store_ID`,`Image_Name`,`Img_Type`) VALUES ('$Store_ID','$fileName','STORE')";
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
  <title>Stores Image</title>
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
<a href="addnewstore.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW store</button></a>

<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>Store_ID</th>
        <th>Image</th>
        <th>Image Name</th>
      </tr>
    </thead>
    <tbody>
      <?php 
            $sql ="SELECT s.Store_ID,s.Store_Name,I.Image_Name 
                FROM images as I
            INNER JOIN stores as s ON I.Store_ID = s.Store_ID 
            ORDER BY I.Date_OF_Add DESC";

            $res = $conn->query($sql);
            while($row = $res->fetch_assoc()){
                
              $Store_ID  = $row["Store_ID"];
              $Image_Name = $row["Image_Name"];
              $Store_Name = $row["Store_Name"];
              echo "
                <tr>
                  <td>{$Store_ID }</td>
                  <td><img src='images/stores/{$row["Image_Name"]}' style='height:80px;width:200px;' ></td>
                  <td>{$Store_Name}</td>
                </tr>
              ";
            }
        ?>
    </tbody>
  </table>
    <form method='post' action='addStoreImage.php' enctype='multipart/form-data' >
        <select name="Store_ID" id="email" class="form-control">
          <option Value=" ">Choose store</option>
        
          <?php 
              // use a while loop to fetch data 
              // from the $all_categories variable 
              // and individually display as an option
              while ($AllStores = mysqli_fetch_array($GetAllStores_Result,MYSQLI_ASSOC)):; 
                      
          ?>
              <option value="<?php echo $AllStores["Store_ID"];
                  // The value we usually set is the primary key
              ?>">
                  <?php echo $AllStores["Store_ID"]." - ".$AllStores["Store_Name"];
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