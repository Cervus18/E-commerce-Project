<?php
include '../connect/conn.php';

$id=$_POST['achat_id'];
if(isset($_POST['confirm'])){
   $query="UPDATE achat SET status='Accepted' WHERE achat_id='$id'";
}elseif(isset($_POST['reject'])){
   $query="UPDATE achat SET status='Rejected' WHERE achat_id='$id'";
}

mysqli_query($db,$query);
header('Location: dashboard.php');
die;
