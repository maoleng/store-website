<?php 

$email = $_POST['email'];
$password = $_POST['password'];

require 'admin/connect_database.php';

$sql_command_select = "select * from customers where email = '$email' and password = '$password' ";
$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
$number_record = mysqli_num_rows($query_sql_command_select);

if ($number_record == 1) {
	session_start();
	$array_customer = mysqli_fetch_array($query_sql_command_select);

	$_SESSION['name'] = $array_customer['name'];
	$_SESSION['id'] = $array_customer['id'];

	header('location:index_user.php');
	exit();
}


header('location:form_sign_in.php?error=Đăng nhập sai rồi');



