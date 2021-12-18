<?php 

$name = $_POST['name'];
$phone_number = $_POST['phone_number'];
$address = $_POST['address'];
$picture = $_POST['picture'];

if (empty($name) || empty($phone_number) || empty($address) || empty($picture)){
	header('location:form_insert_manufactures.php?error=Chưa nhập đầy đủ thông tin');
	exit;
}

require '../connect_database.php';

$sql_command_insert = "insert into manufactures (name, phone_number, address, picture)
values ('$name', '$phone_number', '$address', '$picture')";
mysqli_query($connect_database, $sql_command_insert);

$error = mysqli_error($connect_database);

if (empty($error)) {
	header('location:index_manufactures.php?success=Thêm nhà sản xuất thành công');	
}else {
	header('location:index_manufactures.php?error=Lỗi truy vấn');	
}
 

mysql_close($connect_database);
 ?>