<?php 
	$token = $_GET['token'];
	require 'admin/connect_database.php';
	$sql_command_select = "select *, count(*) from forgot_password where token = '$token'";
	$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
	$array_forgot_password = mysqli_fetch_array($query_sql_command_select);

	$check = $array_forgot_password['count(*)'];
	if ( $check != 1 ) {
		header('location:index_customers.php');
		exit();
	}

?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<form action = "process_change_new_password.php" method="post">
	Nhập mật khẩu mới<br>
	<input hidden name="token" value = "<?php echo $token ?>">
	<input type="password" name="password"><br>
	<button>Xác nhận đổi mật khẩu</button>
</form>

</body>
</html>