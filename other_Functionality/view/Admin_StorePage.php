<?php 
include("../../db.php");
$SID = $_GET['SID'];

$sql_Get_Store = "SELECT s.*,pc.*,sb.* 
FROM stores AS s 
    INNER JOIN postalcodes AS pc ON s.PostalCode = pc.PostalCode
    INNER JOIN store_branches AS sb ON sb.Branch_Store_ID  = s.Branch_Store_ID 
WHERE s.Store_ID = '$SID';";

$sql_Get_Store_query = mysqli_query($conn,$sql_Get_Store);
  while($row = mysqli_fetch_assoc($sql_Get_Store_query))
    {
        $Store_Name = $row['Store_Name'];
        $Branch = $row['Name'];
        $Address = $row['Address'];
        $Email = $row['Email'];
        $Phone = $row['Phone'];
        $PostalCode  = $row['PostalCode'];
        $Region  = $row['Region'];
        $Image_Name = $row['Image_Name'];

       /*  $Date_OF_Add = date("d.m.Y", strtotime($row['Date_OF_Add']));  
        $Date_OF_Update = date("d.m.Y", strtotime($row['Date_OF_Update']));   */
    }

$Get_Number_OF_Cars = "SELECT Number_OF_Cars FROM number_of_cars_by_stores WHERE Store_Name = '$Store_Name'";
$Get_Number_OF_Cars_query = mysqli_query($conn,$Get_Number_OF_Cars);
    

$Get_Number_OF_Employees = "SELECT COUNT(SSN) AS Number_OF_Employees FROM employee_with_active_contract WHERE Store_Name = '$Store_Name'";
$Get_Number_OF_Employees_query = mysqli_query($conn,$Get_Number_OF_Employees);

$Get_Stores_All_Cars = "SELECT i.*, CBS.* 
FROM images As i
INNER JOIN cars_by_stores AS CBS ON i.VIN = CBS.VIN
WHERE CBS.Store_ID = '$SID'
GROUP BY i.VIN ";
$Get_Stores_All_Cars_query = mysqli_query($conn,$Get_Stores_All_Cars);

?>

<!DOCTYPE html>
<html>
 <head>
  <title><?php echo $Store_Name; ?></title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">


 </head>
 <style>
    body{
        width:100%;
        margin-top:10px;
        font-family: "Quicksand", sans-serif;
        font-optical-sizing: auto;
        font-style: normal;
    }
    .container{
        margin-left:15em;
        width:80%;
    }
    .FirstRow{
        display: flex;
        font-size:18px;
        height:40px;
    }

    .firstData{
        margin-top:0.4em;
        font-weight:bold;
        text-align:right;
        padding-right:3em;
    }

    .firstHeader{
        font-size:25px;
    }

    #dynamic_slide_show{
        height:55em;
        width:100%;
    }
    img{
        height:35em !important;
        width:100%;
    }
    .row{
        width:78.65%;
        margin-left:16em;
        margin-bottom:2em;
    }
    .store_Name{
        background-color:white;
        font-size:4.5em;
        font-weight:bold;
    }
    .date{
        font-size:1em;
        color:gray;
    }
    span{
        text-transform:uppercase;
        color:red;
    }
    .imageError{
       position: absolute;
       left:10em;
       top:7em;
       font-size:25px;
       border:2px solid red;
       padding:2em;
       font-weight:bold;
    }
    .static{
        font-size:2em;
        font-weight:bold;
        margin-left:0.5em;
        margin-top:30px;
    }
   .carheader{
    position:relative;
    padding-top:12.5em;
    font-size:3em;
    text-align:center;
    font-weight:bold;
    margin-bottom:-15px;
   }


    .card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 20%;
  border-radius: 5px;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
  border-radius: 5px 5px 0 0;
}

.container {
  padding: 2px 16px;
}

.Allcarscard{
    width:95%;
    margin-left:30px;
    margin-top:20px;
}

h3{
    margin-left:-7.5em;
}
h4{
    margin-left:-10em;
}
 </style>
<style>
 
</style>
 <body>

    <div class="datatable">
        <div class="col-md-6">
            <?php 
                if($Image_Name === NULL)
                {
                    echo "<span class='imageError'>Store don't have a picture</span>";
                }
                else
                {
                    echo "<img class='card-img-top' src='../../images/stores/$Image_Name' alt='Card image'>";
                }
            ?>
         </div>
        <div class="col-md-6">
            <div class="store_Name">
                <div class="col-12"><?php echo $Store_Name; ?></div>
            </div>
            <br />
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Store Name </div>
                <div class="col-md-6 firstData"><?php echo $Store_Name; ?></div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Branch </div>
                <div class="col-md-6 firstData"><?php echo $Branch; ?></div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Address </div>
                <div class="col-md-6 firstData"><?php echo $Address; ?></div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Postalcodes </div>
                <div class="col-md-6 firstData"><?php echo $PostalCode.', '.$Region; ?></div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Phone </div>
                <div class="col-md-6 firstData">
                    <?php 
                        if($Phone === NULL)
                            {
                                echo "<span>data Not available</span>";
                            }
                        else
                            {
                                echo $Phone;
                            }
                    ?>
                </div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Email </div>
                <div class="col-md-6 firstData">
                    <?php 
                        if($Email === NULL)
                            {
                                echo "<span>data Not available</span>";
                            }
                        else
                            {
                                echo $Email;
                            }
                    ?>
                </div>
            </div>

            <div class="static">
                <div class="col-12">Statics</div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Total Number of Car (s) </div>
                <div class="col-md-6 firstData">
                    <?php 
                        if (!$Get_Number_OF_Cars_query) {	
                            error('Some connection issue came up');
                        }
                            $num_rows = mysqli_num_rows($Get_Number_OF_Cars_query);
                                if ($num_rows > 0) 
                                    {
                                        while($row = mysqli_fetch_assoc($Get_Number_OF_Cars_query))
                                            {
                                                echo $row['Number_OF_Cars'];
                                            }
                                    }
                                else 
                                    {
                                        echo "<span>Store don't have a any car</span>";
                                    }
                    ?>
                </div>
            </div>
            <div class="FirstRow">
                <div class="col-md-6 firstHeader">Total Number of Employee (s) </div>
                <div class="col-md-6 firstData">
                    <?php 
                        if (!$Get_Number_OF_Employees_query) {	
                            error('Some connection issue came up');
                        }
                            $num_rows = mysqli_num_rows($Get_Number_OF_Employees_query);
                                if ($num_rows > 0 ) 
                                    {
                                        while($row = mysqli_fetch_assoc($Get_Number_OF_Employees_query))
                                            {
                                                echo $row['Number_OF_Employees'];
                                            }
                                    }
                                else 
                                    {
                                        echo "<span>Store don't have a any employee</span>";
                                    }
                    ?>
                </div>
            </div>
        </div>
    </div>

                                <!--All cars section Starts -->
    <div>
        <div class="col-12 carheader">All Cars</div>
            <div class="row container Allcarscard">

        <?php 
            if (!$Get_Stores_All_Cars_query) {	
                error('Some connection issue came up');
            }
                $num_rows = mysqli_num_rows($Get_Stores_All_Cars_query);
                    if ($num_rows > 0) 
                        {
                            while($row = mysqli_fetch_assoc($Get_Stores_All_Cars_query))
                                {
                                    ?>
                                   
                                        <div class="col-md-4" style="margin-top:20px;"> 
                                            <div class="card" style="width:45em;">
                                                <img src="../../images/cars/<?php echo $row['Image_Name'] ?>" alt="Avatar">
                                                    <div class="container">
                                                        <h3><b><?php echo $row['VIN']; ?></b></h3> 
                                                        <h4><?php echo $row['Number_Plate']; ?></h4> 
                                                        <h4><?php echo $row['Brand']." ".$row['Model']; ?></h4> 
                                                        <h4><?php echo $row['Model_Spec']; ?></h4> 
                                                    </div>
                                            </div>
                                        </div>
                                        
                                    
                                    <?php
                                }
                        }
                    else 
                        {
                            echo "<span>Store don't have any car</span>";
                        }
        ?>
        </div>
    </div>
            <!--All cars section ends -->
 </body>
</html>