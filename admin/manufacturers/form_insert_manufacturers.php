<?php 
require '../check_super_admin_login.php';
require '../validate.php'; 
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../index3.css">
	<link rel="stylesheet" href="../style_validate1.css">
	<link rel="stylesheet" type="text/css" href="../style_table.css">
</head>

<body> 
<?php require '../menu.php'; ?>
<div class="top">
	<!-- <div class = "search">
		<form class = "form_search">
			Tìm kiếm
			<input type="search" name="search" value = "<?php echo $content_search ?>">
			<button>
				<img src="../style/style_image/icon_search.png" width="50px">
			</button>
		</form>
	</div> -->

	<div class = "login">
		<span>Xin chào <?php echo $_SESSION['name'] ?></span>
	</div>
</div>

<div class = "bot">
	<div class = "header">
		<h1 class =  "header" >Thêm nhà sản xuất</h1>
	</div>
	<br>
	<form action = "process_insert_manufacturers.php" method = "post" id = "form-insert-manufactures">
		Tên nhà sản xuất
		<input type="text" name="name"><br>
		Số điện thoại
		<input type="text" name="phone"><br>
		Địa chỉ
		<textarea name = "address"></textarea><br>
		Hình ảnh
		<input type="text" name="image"><br>
		<button>Thêm</button>
	</form>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
<script src="form_insert_manufacturers.js"></script>

</body>
</html>