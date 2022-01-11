<?php session_start(); 


if (isset($_COOKIE['login_renember'])) {
	require 'admin/connect_database.php';
	$token = $_COOKIE['login_renember'];
	$sql_command_select = "select * from customers where token = '$token' limit 1 ";
	$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
	$array_customer = mysqli_fetch_array($query_sql_command_select);
	$count_account = mysqli_num_rows($query_sql_command_select);
	if ($count_account == 1) {
		$_SESSION['id'] = $array_customer['id'];
		$_SESSION['name'] = $array_customer['name'];		
	}

}


if (isset($_SESSION['id'])) {
	header('location:index_user.php');
	exit;	
}


?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="admin/style_validate.css">
</head>
<body>



<?php 
if (isset($_SESSION['error'])) {
	echo $_SESSION['error'];
	unset($_SESSION['error']);
}

 ?>

<form method="POST" action="process_sign_in.php">
	Email
	<input type="email" name="email"><br>
	Mật khẩu
	<input type="password" name="password"><br>
	<input type="checkbox" name="login_renember">
	Ghi nhớ đăng nhập<br>
	<a href = "form_forgot_password.php">Quên mật khẩu</a>
	<button>Đăng nhập</button>
</form>


</body>
</html>