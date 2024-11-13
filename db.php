<?php 
    $host = 'localhost:3307';  
    $user = 'root';  
    $pass = ''; 
    $db = "car_store"; 
    $conn = mysqli_connect($host, $user, $pass,$db);  
    if(! $conn )  
    {  
    die('Could not connect: ' . mysqli_error());  
    }  
?>

<!-- 
SET  @num := 0;
UPDATE your_table SET id = @num := (@num+1);
ALTER TABLE `your_table` AUTO_INCREMENT = 1;

-->

<!-- 

    SELECT count(F_Name) AS NON, F_Name FROM customers Where Gender = '' GROUP BY F_Name;


    UPDATE customers SET Gender = 'Male' WHERE F_Name 
        LIKE '%Matti%' OR 
        F_Name LIKE '%Kalevi%' OR 
        F_Name LIKE '%Kyllikki%' OR 
        F_Name LIKE '%Lauri%' OR 
        F_Name LIKE '%Marko%'OR 
        F_Name LIKE '%Markus%' OR
        F_Name LIKE '%Martti%'OR 
        F_Name LIKE '%Martti%';


Finding duplicates and delete

SET SQL_SAFE_UPDATES = 0;
DELETE FROM cars
WHERE VIN IN (
    SELECT vin
    FROM cars
    GROUP BY vin
    HAVING COUNT(vin) > 1
);

-->