<?php 

$id = $_POST['id'];
$name = $_POST['name'];
$phone_number = $_POST['phone_number'];
$address = $_POST['address'];
$picture = $_POST['picture'];


if (empty($id)){
	header('location:index_manufactures.php?error=Chưa nhập id bài cần sửa');
	exit;
}

if (empty($name) || empty($phone_number) || empty($address) || empty($picture)){
	header('location:index_manufactures.php?error=Chưa nhập đầy đủ thông tin');
	exit;
}



require '../connect_database.php';

$sql_command_update = "update manufactures set
name = '$name',
phone_number = '$phone_number',
address = '$address',
picture = '$picture' where id = '$id' ";

mysqli_query($connect_database, $sql_command_update);



$error = mysqli_error($connect_database);

if (empty($error)) {
	header('location:index_manufactures.php?success=Sửa thành công');
}else {
	header('location:index_manufactures.php?error=Lỗi truy vấn');	
}


mysql_close($connect_database);