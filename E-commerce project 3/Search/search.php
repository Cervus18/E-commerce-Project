<?php
include '../connect/conn.php';
$search=mysqli_real_escape_string($db,strtolower( $_GET['search']));
$query="SELECT * FROM product WHERE LOWER(name) LIKE '%$search%'";
$result=mysqli_query($db,$query);
$products=mysqli_fetch_all($result,MYSQLI_ASSOC);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
</head>
<body>
   <nav>
        <a class="logo" href="../Landing page/Landing.php">
            <spanv style="font-family: 'Montserrat Alternates', sans-serif;">WeeShopin</span>
            <i class="fas fa-gem"></i>
        </a>
    </nav>
    <div class="container"> 
    <div class="cards">
    <?php foreach($products as $product):?>
        
        <div class="card">
            <a href="../item description page/<?php if($product['categorie']==='tv'){echo "TVs";}elseif($product['categorie']==='pc'){echo "Laptops";}else{echo "Phones";} ?>/<?php echo $product['categorie'] ?>.php?id=<?php echo $product['id'] ?>"><img src="../Categories/<?php if($product['categorie']==='tv'){echo "TVs";}elseif($product['categorie']==='pc'){echo "Laptops";}else{echo "Phones";} ?>/<?php echo $product['path'] ?>"></a>
            <div class="description">    
                <p class="product"><?php echo $product['name'] ?></p>
                <p class='price'><?php echo $product['price']?>$</p>
            </div>
        </div>

    <?php endforeach ?>
    
    </div>
  </div>

  <footer>
        <div class="social-media">
            <span>Follow us:</span>
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter-square"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
            <a href="#"><i class="fab fa-linkedin"></i></a>
        </div>

        <div class="copyright">
            WeeShopin |&copy  E-commerce 2020 | All rights resrved
        </div>
        <div class="privacy">  <a href="#">Privacy policy</a> </div>
    </footer>
</body>
</html>
