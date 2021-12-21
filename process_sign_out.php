<?php 
session_start();

unset($_SESSION['name']);
unset($_SESSION['id']);

header('location:index_customers.php');


 ?>