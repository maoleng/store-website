<?php 
$id = $_POST['id'];
$name = $_POST['name'];
$description = $_POST['description'];
$price = $_POST['price'];
$picture_new = $_FILES['picture_new'];
$manufactures_id = $_POST['manufactures_id'];

if (empty($id)){
	header('location:index_products.php?error=Chưa nhập id bài cần sửa');
	exit;
}

if (empty($name) || empty($description) || empty($price) ){
	header('location:index_products.php?error=Chưa nhập đầy đủ thông tin');
	exit;
}



if ($picture_new['size'] > 0) {
	$folder = 'pictures/';
	$file_type = explode('.', $picture_new["name"])[1];
	$file_name = time() . '.' . $file_type;
	$file_path = $folder . $file_name;
	move_uploaded_file($picture_new["tmp_name"], $file_path);
} else {
	$file_path = $_POST['picture_old'];	


}

require '../connect_database.php';
$sql_command_update = "update products set 
name = '$name',
description = '$description',
price = '$price',
picture = '$file_path',
manufactures_id = '$manufactures_id' where id = '$id' ";

mysqli_query($connect_database, $sql_command_update);

$error = mysqli_error($connect_database);

if (empty($error)) {
	header('location:index_products.php?success=Sửa sản phẩm thành công');	
}else {
	header('location:index_products.php?error=Lỗi truy vấn');	
}

mysqli_close($connect_database); 


 ?>