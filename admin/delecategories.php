<?php
 include('./configr.php');   
 
$id = $_GET['id'];     //لانه ظاهر في الurl

$sql = "DELETE  categories where categorie_name= $id";



// $conn->exec($sql);

 
 echo "deleted succsefully";
 ?>