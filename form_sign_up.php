<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="admin/style_validate.css">
</head>
<body>
<h1>Form đăng kí</h1>
<?php require 'admin/validate.php' ?>

<form method = "post" action = "process_sign_up.php">
	Họ và tên
	<input type="text" name="name"><br>
	Email
	<input type="email" name="email"><br>
	Số điện thoại
	<input type="text" name="phone"><br>
	Giới tính<br>
	<input type="radio" value = "Nam" name="gender">Nam<br>
	<input type="radio" value = "Nữ" name="gender">Nữ<br>
	Ngày sinh
	<input type="date" name="dob"><br>
	Địa chỉ
	<input type="text" name = "address"><br>
	Mật khẩu
	<input type="password" name="password"><br>
	<button>Đăng ký</button>
</form>
</body>
</html>