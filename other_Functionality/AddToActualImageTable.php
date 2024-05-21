<?php 
session_start();
include("../db.php");



if(isset($_POST["add"])){
  $VIN_session = $_SESSION['VIN'];
  $sql_Transferdata = "SELECT * FROM temporary_image";
  $res_sql_Transferdata = $conn->query($sql_Transferdata);
    while($row = $res_sql_Transferdata->fetch_assoc()){
      $VIN = $row["VIN"];
      $Image_Name = $row["Image_Name"];

      $AddNewCarImage ="INSERT INTO images (VIN,Image_Name) VALUES ('$VIN','$Image_Name')";
      $AddNewCarImageKysely = mysqli_query($conn, $AddNewCarImage) or die (mysqli_error($conn));
        if($AddNewCarImageKysely == 1)
          {
            $DELETE_FROM_TEMP_IMAGE ="DELETE FROM temporary_image WHERE VIN = '$VIN'";
            $DELETE_FROM_TEMP_IMAGE_Kysely = mysqli_query($conn, $DELETE_FROM_TEMP_IMAGE) or die (mysqli_error($conn));
              if($DELETE_FROM_TEMP_IMAGE_Kysely == 1)
                {
                  
                  $Uutiskirjeet_Taulu_Alustsus_1= "SET @num := 0";
                  $Uutiskirjeet_Taulu_Alustsus_1_Ajo  = mysqli_query($conn,$Uutiskirjeet_Taulu_Alustsus_1);
                    if($Uutiskirjeet_Taulu_Alustsus_1_Ajo = 1)
                        {
                            $Uutiskirjeet_Taulu_Alustsus_2 = "UPDATE temporary_image SET Row_ID = @num := (@num+1)";
                            $Uutiskirjeet_Taulu_Alustsus_2_Ajo  = mysqli_query($conn,$Uutiskirjeet_Taulu_Alustsus_2);
                              if($Asiakas_Taulu_Alustsus_2_Ajo = 1)
                                {
                                  $Uutiskirjeet_Taulu_Alustsus_3 = "ALTER TABLE temporary_image AUTO_INCREMENT = 1";
                                  $Uutiskirjeet_Taulu_3_Ajo  = mysqli_query($conn,$Uutiskirjeet_Taulu_Alustsus_3);
                                    if($Uutiskirjeet_Taulu_3_Ajo = 1)
                                      {
                                        header('Location:../index.php');
                                      }
                                }
                        }
                }
          }
    }
} 


?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    .container-fluid{
       margin-top:2em;
       width:95%;
    }

    .card{
        margin:5px;
       
    }

    button{
        margin-left:4em;
        margin-top:1em;
        margin-bottom:1em;
        width:24.7em;
        background-color:green;
        color:white;
        height:3em;
        text-transform:uppercase;
    }
</style>
<body>

  <div class="container-fluid">
    <div class="row">

    <?php 
            $sql ="select * from temporary_image ORDER BY Row_ID ASC";
            $res = $conn->query($sql);
            while($row = $res->fetch_assoc()){
              $VIN = $row["VIN"];
              $Image_Name = $row["Image_Name"];

              echo "
                <div class='col-lg-3'> <div class='card' style='width:400px'>
                    <img class='card-img-top' src='../images/cars/{$row["Image_Name"]}' alt='Card image' style='width:100%'>
                        <div class='card-body'>
                            <h4 class='card-title text-center'> $VIN</h4>
                            <p class='card-text text-center'>$Image_Name</p>
                        </div>
                    </div>
                </div>
              ";
            }
        ?>
    </div>  
  </div>

    <form method="POST">
        <button type="submit" name="add">Verify & Add</button>
    </form>
</body>
</html>
