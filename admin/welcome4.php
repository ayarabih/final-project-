<?php
 include('./configr.php');   


 if (isset($_POST['add']))

 {
     $tag= $_POST['add-category'];

 
 $sql = "INSERT INTO categories (categorie_name) 
        VALUES(?)";
 $stmt= $conn->prepare($sql);
 
 $stmt->execute([$tag]);
 echo "<br>you submitted data";

 }


?>


