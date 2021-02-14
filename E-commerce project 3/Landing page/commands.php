<?php session_start(); if(isset($_SESSION['user_id'])): ?>
<?php include '../connect/conn.php';
$id=$_SESSION['user_id'];
$query="SELECT product.name,achat.quantity,achat.status FROM product JOIN achat ON product.id=achat.product_id WHERE achat.user_id='$id'";
$result=mysqli_query($db,$query);
$commands=mysqli_fetch_all($result,MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commands</title>
</head>
<body>
    <nav>
        <a class="logo" href="Landing.php">
            <span style="font-family: 'Montserrat Alternates', sans-serif;">WeeShopin</span>
            <i class="fas fa-gem"></i>
        </a>
         <a style="color:white;text-decoration:none" href="../logout/logout.php">logout</a>      
    </nav>

    <div class="commands">
    <div class="head">
        <span>Commands</span>
        <span>Status</span>
    </div>
    <div class="body">
    <?php foreach($commands as $command):?>
           <div class="row-info">
              <span><?php echo $command['quantity'] ?> x <?php echo $command['name'] ?></span>
              <span><?php echo $command['status'] ?></span>
           </div>
    <?php endforeach ?>

         
           
          
    </div>
    </div>
     <footer></footer>
     <script>
         const rows=document.querySelectorAll('.row-info')
          rows.forEach(row=>{   
             if(row.children[1].innerText==="Rejected"){
                row.style.backgroundColor="#ff9a9a"
             }else if(row.children[1].innerText==="Accepted"){
                row.style.backgroundColor="#7cdba2"
             }
           
          })
     </script>
</body>
</html>


<?php else:  ?>
    You are not allowed to access  this page
<?php endif ?>
