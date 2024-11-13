<?php 
  require 'db.php';
  $sql_postalcodes = "SELECT * FROM postalcodes ORDER BY rand() LIMIT 1";
  $all_sql_postalcodes = mysqli_query($conn,$sql_postalcodes);
    while($row = mysqli_fetch_assoc($all_sql_postalcodes))
      { 
        $PostalCode  = $row['PostalCode'];
        $Region  = $row['Region'];
      }


  $sql_GET_RandomEmployee= "SELECT * FROM employees WHERE SSN IS NULL ORDER BY rand() LIMIT 1";
  $query_sql_GET_RandomEmployee = mysqli_query($conn,$sql_GET_RandomEmployee);
    while($row = mysqli_fetch_assoc($query_sql_GET_RandomEmployee))
      {
        $Employee_Random_ID = $row['Emp_ID'];
      }

  //SSN Generator
  $days = rand(01,31);
  if($days < 10){
    $nd = "0".$days;
  }
  else{
    $nd = $days;
  }

$month = rand(01, 12);
  if($month < 10){
    $nm = "0".$month;
  }
  else{
    $nm = $month;
  }
$year = rand(20,99);
$ChekNumber = rand(999,99);
$Strting = substr(str_shuffle("ABCDEFGHIJKLMNOPQRSTUVWXYZ"),1,1);
$Henksu = $nd.$nm.$year.'-'. $ChekNumber.$Strting;

$UpdateEmloyee ="UPDATE employees SET `SSN` = '$Henksu', `PostalCode` = '$PostalCode' WHERE Emp_ID = '$Employee_Random_ID'";
$UpdateEmloyeeKysely = mysqli_query($conn, $UpdateEmloyee) or die (mysqli_error($conn));
  if($UpdateEmloyeeKysely == 1)
  {
    echo "<script>window.location.href = 'index.php'</script>";
    
  }

?>






