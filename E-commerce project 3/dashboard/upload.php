<?php if($_SERVER['REQUEST_METHOD']=='POST'):  ?>
<?php
if(isset($_POST['submit'])){
    $productName=$_POST['name'];
    $categorie=$_POST['categorie'];
    $price=$_POST['price'];
    $description=$_POST['description'];
    $allowedCategories=array('tv','phone','pc');
    $file=$_FILES['file'];
    
    $fileName=$file['name'];
    $fileTmpName=$file['tmp_name'];
    $fileSize=$file['size'];
    $fileError=$file['error'];

    $fileExt=explode('.',$fileName);
    $fileActualExt=strtolower(end($fileExt));
    $allowed=array('jpg','jpeg','png');

    if(in_array($fileActualExt,$allowed)){
        if($fileError===0){
            if($fileSize<1000000){
               $fileNameNew=uniqid('',true).".".$fileActualExt;
               if(in_array($categorie,$allowedCategories)){
                  include '../connect/conn.php';
                  switch($categorie){
                        case 'tv':
                        $fileDestination='../Categories/TVs/'.$fileNameNew;
                        move_uploaded_file( $fileTmpName,$fileDestination);
                        if(!empty($productName) && !empty($price)  && !empty($description)){
                            $query="INSERT INTO product (name,path,price,categorie,description) VALUES ('$productName','$fileNameNew','$price','$categorie','$description') ";
                            mysqli_query($db,$query);
                            header('Location: addproduct.php');
                            die;
                     
                        }else{
                            echo "You left some inputs empty";
                        }
                             break;
                        case 'phone':
                            $fileDestination='../Categories/Phones/'.$fileNameNew;
                            move_uploaded_file( $fileTmpName,$fileDestination);
                            if(!empty($productName) && !empty($price)  && !empty($description)){
                                $query="INSERT INTO product (name,path,price,categorie,description) VALUES ('$productName','$fileNameNew','$price','$categorie','$description') ";
                                mysqli_query($db,$query);
                                header('Location: addproduct.php');
                                die;
                         
                            }else{
                                echo "You left some inputs empty";
                            }

                        
                            break;
                        case 'pc':
                        $fileDestination='../Categories/Laptops/'.$fileNameNew;
                        move_uploaded_file( $fileTmpName,$fileDestination);
                        if(!empty($productName) && !empty($price)  && !empty($description)){
                            $query="INSERT INTO product (name,path,price,categorie,description) VALUES ('$productName','$fileNameNew','$price','$categorie','$description') ";
                            mysqli_query($db,$query);
                            header('Location: addproduct.php');
                            die;
                     
                        }else{
                            echo "You left some inputs empty";
                        }
                         
                             break;
                  }

               }else{
                echo "This categorie is not allowed";
               }

            }else{
                echo "This file is too big!";
            }
        }else{
            echo "There was an error uploading this file!";
        }
 
    }else{
        echo "You cannot upload files of this type!";
    }
    

}
?>
<?php endif ?>
