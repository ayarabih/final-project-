<?php

$host ="localhost";
$username ="root";
$password ="";


try {
    $conn =new PDO("mysql:host=$host;dbname=final_project",$username,$password);     // data base =dbname create new connection pdo

    $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        
        

    echo "connect succesfully";

}
catch(Exception $e){
    echo"Connection failed: ". $e->getMessage();}  
    ?>