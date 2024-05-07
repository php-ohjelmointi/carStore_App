<?php 
    require 'db.php';
    
  //SQL query brands
  $sql_Get_Cars_Details = "SELECT * FROM car_store.cars_by_stores";
  $sql_Get_Cars_Details_Result = mysqli_query($conn,$sql_Get_Cars_Details);

   //SQL Getting Employees
   $sql_SellerDetails = "SELECT  `employees`.`Emp_ID` AS `Emp_ID`,
   `employees`.`SSN` AS `SSN`, 
   `employees`.`F_Name` AS `F_Name`, 
   `employees`.`L_Name` AS `L_Name`, 
   `stores`.`Store_Name` AS `Store_Name`,
   `titles`.`Name` AS `Title_Name` 
FROM ((((`employees` 
       JOIN `employee_titles` ON (`employees`.`Emp_ID` = `employee_titles`.`Emp_ID`)) 
          JOIN `stores_employee` ON (`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) 
         JOIN `stores` ON (`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) 
       JOIN `titles` ON (`titles`.`Title_ID` = `employee_titles`.`Title_ID`)) 
WHERE `stores_employee`.`Service_Status` = 'Active' AND  `titles`.`Name` = 'Dealer'";
   $sql_SellerDetails_Result = mysqli_query($conn,$sql_SellerDetails);

    //SQL Getting customer
    $sql_BuyerDetails = "SELECT * FROM customers";
    $sql_BuyerDetails_Result = mysqli_query($conn,$sql_BuyerDetails);

  if(isset($_POST['addnewcarssold'])){
        $VIN = mysqli_real_escape_string($conn,$_POST['VIN']);
        $Seller = mysqli_real_escape_string($conn,$_POST['Emp_ID']);
        $Buyer = mysqli_real_escape_string($conn,$_POST['Customer_ID']);
        $O_Price = mysqli_real_escape_string($conn,$_POST['O_Price']);
        $S_Price = mysqli_real_escape_string($conn,$_POST['S_Price']);
        
        
        $AddNewCarDeal ="INSERT INTO carsold (`VIN`, `Sold_By`, `Sold_To`, `Original_Price`, `Sold_Price`) 
                    VALUES ('$VIN','$Seller','$Buyer','$O_Price','$S_Price')";

                  $AddNewCarDealKysely = mysqli_query($conn, $AddNewCarDeal) or die (mysqli_error($conn));

                  if($AddNewCarDealKysely == 1)
                  {
                    header('Location:All_own_cust_cars.php');
                  }
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>Cars owner </title>
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

  strong { 
  font-weight: bold;
}

  </style>
</head>
<body>

<div class="container">
  <h2>Add new cars solder/owner</h2>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
   
    <br />
    <div class="ROW">
    <select name="VIN" id="email" class="form-control">
        <?php 
            while ($SellingCar = mysqli_fetch_array(
                    $sql_Get_Cars_Details_Result,MYSQLI_ASSOC)):; 
        ?>
            <option value="<?php echo $SellingCar["VIN"];
            ?>">
                <?php echo $SellingCar["VIN"]." | ".$SellingCar["Number_Plate"]." | ".$SellingCar["Brand"]." ".$SellingCar["Model"]." | ".$SellingCar["Store_Name"]."";
                    
                ?>
            </option>
        <?php 
            endwhile; 
        ?>
      </select>
    </div>
    <br />
    <div class="ROW">
        <p style="margin-left:1em;">Sold BY</p>
        <p style="margin-left:40em;">Sold To</p>
    </div>
    <div class="ROW">
        <select name="Emp_ID" id="email" class="form-control">
            <?php 
                // use a while loop to fetch data 
                // from the $all_categories variable 
                // and individually display as an option
                while ($SellerDetails = mysqli_fetch_array(
                        $sql_SellerDetails_Result,MYSQLI_ASSOC)):; 
            ?>
                <option value="<?php echo $SellerDetails["Emp_ID"];
                    // The value we usually set is the primary key
                ?>">
                    <?php echo $SellerDetails["Emp_ID"]." - (".$SellerDetails["SSN"].") - ".$SellerDetails["F_Name"]." ".$SellerDetails["L_Name"]." | ".$SellerDetails["Store_Name"];
                        // To show the category name to the user
                    ?>
                </option>
            <?php 
                endwhile; 
                // While loop must be terminated
            ?>
        </select>
        &nbsp;&nbsp;&nbsp;
        <select name="Customer_ID" id="email" class="form-control">
            <?php 
                // use a while loop to fetch data 
                // from the $all_categories variable 
                // and individually display as an option
                while ($BuyerDetails = mysqli_fetch_array(
                        $sql_BuyerDetails_Result,MYSQLI_ASSOC)):; 
            ?>
                <option value="<?php echo $BuyerDetails["Customer_ID"];
                    // The value we usually set is the primary key
                ?>">
                    <?php echo $BuyerDetails["Customer_ID"]." - (".$BuyerDetails["SSN"].") - ".$BuyerDetails["F_Name"]." ".$BuyerDetails["L_Name"];
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
    <div class="ROW">
      <input type="text" class="form-control" id="email" name="O_Price" placeholder="Original Price">
       &nbsp;&nbsp;
      <input type="text" class="form-control" id="email" name="S_Price" placeholder="Sold Price">
    </div>

    <br />
    <button type="submit" name="addnewcarssold" class="btn btn-success form-control" >Submit</button>
    <br/><br/>
    <a href="index.php"><button type="button" class="btn btn-default form-control">GO BACK</button></a>
  </form>
</div>

</body> 
</html>


