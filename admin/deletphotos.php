<?php
 include('./configr.php');   
$id = $_GET['id'];     //لانه ظاهر في الurl

$sql = "DELETE  photos where photo_id= $id";



// $conn->exec($sql);

 
 echo "deleted succsefully";
 ?>
