<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../indexx.css">
</head>
<body bgcolor="ABB1BA">

<?php 
require '../connect_database.php';
$id = $_GET['id'];
$sql_command_select_products = "select * from products where id = '$id' ";
$query_sql_command_select_products = mysqli_query($connect_database, $sql_command_select_products);

$sql_command_select_manufactures = "select * from manufactures";
$query_sql_command_select_manufactures = mysqli_query($connect_database, $sql_command_select_manufactures);

$array_products = mysqli_fetch_array($query_sql_command_select_products);


 ?>




<div class = "all">
	<div class="top">
		<div class = "login">
			<a href="https://google.com">Đăng nhập</a>
		</div>
	</div> 

	<div class="left">
		<?php require '../menu.php'; ?>
	</div>

	<div class = "right">
		<h1 style="text-align: center;">Sửa sản phẩm</h1>
		<form method="post" action = "process_update_products.php" enctype="multipart/form-data">
			<input type="" name="id" value = "<?php echo $array_products['id'] ?>" hidden>
			Tên sản phẩm
			<input type="text" name="name" value = "<?php echo $array_products['name'] ?>"><br>
			Mô tả
			<textarea name = "description"><?php echo $array_products['description'] ?></textarea><br>
			Giá thành
			<input type="text" name="price" value = "<?php echo $array_products['price'] ?>"><br>
			Đổi ảnh mới
			<input type="file" name="picture_new"><br>
			Hoặc giữ hình ảnh cũ
			<img src="<?php echo $array_products['picture'] ?>" width = "100px"><br>
			<input type="hidden" name="picture_old" value="<?php echo $array_products['picture'] ?>"><br>
			Nhà sản xuất
			
			
			<select name = "manufactures_id">
				<?php foreach ($query_sql_command_select_manufactures as $array_manufactures): ?>
					<option 
						value = "<?php echo $array_manufactures['id'] ?>"
						<?php if($array_products['manufactures_id'] == $array_manufactures['id']) { ?>
						selected
						<?php } ?>
					>
						<?php echo $array_manufactures['name'] ?>
					</option>
				<?php endforeach ?>
			</select>
			
			<button>Sửa</button>

		</form>
	</div>
</div>


</body>
</html>