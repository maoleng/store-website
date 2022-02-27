<?php require '../check_admin_login.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../index1.css">
	<link rel="stylesheet" href="../style_validate1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-tagsinput-latest/dist/bootstrap-tagsinput.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rainbow/1.2.0/themes/github.css">

</head>


<?php 
require '../connect_database.php';
$sql_select_manufacturees = "select * from manufacturers";
$query_sql_select_manufacturees = mysqli_query($connect_database, $sql_select_manufacturees);
mysqli_close($connect_database);


 ?>


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
		<h1 class =  "header" >Thêm vào sản phẩm</h1>
	</div>
	<br>


	<?php require '../validate.php' ?>
	<form method="post" action = "process_insert_products.php" enctype="multipart/form-data" id = "form-insert-products" style="float: right;">
		Tên sản phẩm
		<input type="text" name="name"><br>
		Mô tả
		<textarea name = "description"></textarea><br>
		Giá thành
		<input type="text" name="price"><br>
		Hình ảnh
		<input type="file" name="image"><br>
		Nhà sản xuất
		<select name = "manufacturer_id">
			<?php foreach ($query_sql_select_manufacturees as $array_manufacturers): ?>
				<option value = "<?php echo $array_manufacturers['id'] ?>">
					<?php echo $array_manufacturers['name'] ?>
				</option>
			<?php endforeach ?>
		</select>
		<br>
		Thể loại
		<input type="text" name="types_name" id = "type">
		<br>
		<button>Thêm</button>

	</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
<script src="bootstrap-tagsinput-latest/dist/bootstrap-tagsinput.js"></script>
<script src="typeahead.bundle.js"></script>
<script src="form_insert_products.js"></script>

</body>
</html>