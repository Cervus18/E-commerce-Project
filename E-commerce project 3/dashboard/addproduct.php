
<?php session_start();
if(isset($_SESSION['user_id'] ) && $_SESSION['user_id']==1): ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>
    <nav>
        <a class="logo" href="">
            <spanv style="font-family: 'Montserrat Alternates', sans-serif;">WeeShopin</span>
            <i class="fas fa-gem"></i>
        </a>
        <div>
            <a href="dashboard.php" style="margin-right:30px">Dashboard</a>
            <a href="../logout/logout.php">logout</a>
        </div>
        
    </nav>
    
    <form class="form-container" action="upload.php" method="POST" enctype="multipart/form-data">
        <h1>Add a product</h1>
        <input type="file" name='file'>
        <input type="text" name="categorie" placeholder="Categorie">
        <input type="text" name="name" placeholder="name">
        <input type="number" name="price" placeholder="price">
        <textarea name="description" id="" cols="30" rows="10" placeholder="Description"></textarea>
        <input type="submit" name="submit" value="UPLOAD">
        
    </form>

    <footer></footer>
<?php else:  ?>
    You are not allowed to access  this page
<?php endif ?>