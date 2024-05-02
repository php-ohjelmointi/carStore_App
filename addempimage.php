<?php 
     require 'db.php';

    //Getting all cars
    $GetAllEmployees = "SELECT * FROM employees";
    $GetAllEmployees_Result = mysqli_query($conn,$GetAllEmployees);


    if(isset($_FILES["image"])){
        $SSN = mysqli_real_escape_string($conn,$_POST['SSN']);
        
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
          $fileName = $SSN.".".$fileType;
          //Move image into 'uploads' Folder
          if(move_uploaded_file($_FILES["image"]["tmp_name"],"images/employees/".$fileName)){
            //Save image name in database
            $sql = "INSERT INTO images (`SSN`,`Image_Name`,`Img_Type`) VALUES ('$SSN','$fileName','EMP')";
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
<a href="addnewemployee.php"><button type="button" class="btn btn-primary btn-xs">ADD NEW employee</button></a>
<br /> <br />


<div class="split">
<table class="table table-striped">
    <thead>
      <tr>
        <th>Emp_ID</th>
        <th>Image</th>
        <th>Image Name</th>
      </tr>
    </thead>
    <tbody>
      
    <?php 
            $sql ="SELECT e.SSN,e.F_Name,e.L_Name,I.Image_Name 
            FROM images as I
              INNER JOIN employees as e ON I.SSN = e.SSN
              WHERE  I.Img_Type = 'EMP'
              ORDER BY I.Date_OF_Add DESC";
            $res = $conn->query($sql);
            $i=0;
            while($row = $res->fetch_assoc()){
                
              $SSN = $row["SSN"];
              $Image_Name = $row["Image_Name"];
              $EMP_Name =  $row["F_Name"]." ".$row["L_Name"];
              echo "
                <tr>
                  <td>{$SSN}</td>
                  <td><img src='images/employees/{$row["Image_Name"]}' style='height:100px;width:150px;' ></td>
                  <td>{$EMP_Name}</td>
                </tr>
              ";
            }
        ?>
    </tbody>
  </table>
    <form method='post' action='addempimage.php' enctype='multipart/form-data' >
        <select name="SSN" id="email" class="form-control">
          <option Value=" ">Choose car</option>
        
          <?php 
              // use a while loop to fetch data 
              // from the $all_categories variable 
              // and individually display as an option
              while ($AllEmp = mysqli_fetch_array($GetAllEmployees_Result,MYSQLI_ASSOC)):; 
                      
          ?>
              <option value="<?php echo $AllEmp["SSN"];
                  // The value we usually set is the primary key
              ?>">
                  <?php echo $AllEmp["Emp_ID"]." - ".$AllEmp["SSN"]." - ".$AllEmp["F_Name"]." ".$AllEmp["L_Name"];
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