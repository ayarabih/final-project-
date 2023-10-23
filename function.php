<?php

 include('./config.php');  

 
 function GetDetail() 
{
    global $conn;
    if(isset($_GET['photo_image'])){
        $id=($_GET['photo_image'])
    $stmt = $conn->query("SELECT * FROM photos where photo_image= $id");
while ($row = $stmt->fetch()) {
    $phototitle= $row['photo_title'];
    $photdate = $row['Photo_Date'];
    $images= $row['photo_image'];
    echo   " 
    <div class='row tm-mb-90 tm-gallery'>
     <div class='col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5'>
    <figure class='effect-ming tm-video-item'>
        <img src='./img/$images' alt='$phototitle' class='img-fluid'>
        <figcaption class='d-flex align-items-center justify-content-center'>
            <h2>  $phototitle </h2>
            <a href=  ; >View more</a>
        </figcaption>                    
    </figure>
    <div class='d-flex justify-content-between tm-text-gray'>
        <span class='tm-text-gray-light'>$photdate</span>
        <span>11,402 views</span>
    </div>
    </div>
</div>" ;
    
    }
} 
}


///




