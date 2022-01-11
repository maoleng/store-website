<?php 
session_start();

if (isset($_POST['login_renember'])) {
	$login_renember = true;
} else {
	$login_renember = false;
}


$email = $_POST['email'];
$password = $_POST['password'];

require 'admin/connect_database.php';

$sql_command_select = "select * from customers where email = '$email' and password = '$password' ";
$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
$number_record = mysqli_num_rows($query_sql_command_select);

if ($number_record == 1) {
	$array_customer = mysqli_fetch_array($query_sql_command_select);

	$_SESSION['name'] = $array_customer['name'];
	$_SESSION['id'] = $array_customer['id'];

	if ($login_renember) {
		$token = uniqid('user_', true);
		$id = $array_customer['id'];
		$sql_command_update = "update customers set token = '$token' where id = '$id' ";
		mysqli_query($connect_database, $query_sql_command_update);


		setcookie('login_renember', $token, time() + 24*3600*30);
	}

	header('location:index_user.php');
	exit();
}

$_SESSION['error'] = 'Đăng nhập sai rồi';

header('location:form_sign_in.php');



