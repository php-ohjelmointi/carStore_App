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