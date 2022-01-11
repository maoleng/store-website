<?php 
session_start();

unset($_SESSION['name']);
unset($_SESSION['id']);
setcookie('login_renember', null, -1);

header('location:index_customers.php');


 ?>