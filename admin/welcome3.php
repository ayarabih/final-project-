<?php
 include('./configr.php');   

?>
<?php 
if (isset($_POST['submit']))
{
    $photo_title= $_POST['title'];
            $License=$_POST['license'];
           $date= $_POST['photodata'];
            $dimen= $_POST['dimension']; 
            $format=$_POST['format'];
           
         $image=$_POST['image'];
            $active= $_POST['checkbox'];
           


               
          
     
          
    $sql = "INSERT INTO 
    photos(photo_title,photo_License,Photo_Date,photo_Dimension,photo_format,photo_image,photo_active) 
        VALUES(?,?,?,?,?,?,?)";
       
        $stmt= $conn->prepare($sql);

        
            $stmt->execute([$photo_title, $License,$date,$dimen,$format,$image,$active]
        );

        // $user = $stmt->fetch();

            echo "<br>you submitted data";
    



}



// INSERT INTO `photos` 
//(`photo_title`, `photo_License`, `Photo_Date`, `photo_Dimension`, `photo_format`, `photo_active`, 
//`photo_tag`, `photo_image`, `photo_id`, `category_id`) 
//VALUES ('apple', 'apple license', '2023-10-01', '500*500', 
//'jpg', 'on', 'phone', 
// , NULL, '3');
?>



<?php 





