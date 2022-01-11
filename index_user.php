<?php session_start();
if (empty($_SESSION['name'])) {
	header('location:index_customers.php?error=Đăng nhập lại đi bạn');
	exit();
}



 ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
Xin chào bạn 
<?php 

echo $_SESSION['name'];
 ?>
<a href="process_sign_out.php">
	Đăng xuất tại đây
</a>

</body>
</html>