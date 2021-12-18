<?php 

$name = $_POST['name'];
$description = $_POST['description'];
$price = $_POST['price'];
$picture = $_FILES['picture'];
$manufactures_id = $_POST['manufactures_id'];

if (empty($name) || empty($description) || empty($price) || empty($picture) || empty($manufactures_id) ) {
	header('location:form_insert_products.php?error=Chưa điền đầy đủ thông tin');
	exit();
}

$folder = 'pictures/';
$file_type = explode('.', $picture["name"])[1];

$file_name = time() . '.' . $file_type;

$file_path = $folder . $file_name;

move_uploaded_file($picture["tmp_name"], $file_path);

require '../connect_database.php';
$sql_command_insert = "insert into products(name, description, price, picture, manufactures_id) 
values('$name', '$description', '$price', '$file_path', '$manufactures_id') ";
mysqli_query($connect_database, $sql_command_insert);

$error = mysqli_error($connect_database);

if (empty($error)) {
	header('location:index_products.php?success=Thêm sản phẩm thành công');	
}else {
	header('location:index_products.php?error=Lỗi truy vấn');	
}
 
mysqli_close($connect_database);

 ?>