<?php
 include('./configr.php');   



if (isset($_POST['send']))
{
    $user_name= $_POST['user-name'];
            $full_name= $_POST['fullname'];
           $email= $_POST['email'];
            $pw= $_POST['password']; 
            $active= $_POST['active'];

    $sql = "UPDATE  user SET user-name=:user-name,email:email,password:password,active=:active WHERE id=:user_id" ;
       
        $stmt= $conn->prepare($sql);

        
            // $stmt->execute([$user_name, $full_name, $email, $pw, $active]);

            echo "<br>you submitted data";
}
            







?>

<?php
// name="user-name
// name="email"
// name="password"
