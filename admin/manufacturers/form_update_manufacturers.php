<?php require '../check_super_admin_login.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../index3.css">
	<link rel="stylesheet" href="../style_validate1.css">
	<link rel="stylesheet" type="text/css" href="../style_table.css">
</head>


<?php require '../connect_database.php';

if (empty($_GET['id'])){
	$_SESSION['error'] = 'Chưa nhập id nhà sản xuất cần sửa';
	header('location:index_manufacturers.php');
	exit;
}

$id = $_GET['id'];

$sql_command_select = "select * from manufacturers where id = '$id'";
$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
$array_manufacturers = mysqli_fetch_array($query_sql_command_select);

//validate nếu nhập id sai
$count_rows = mysqli_num_rows($query_sql_command_select);
if ($count_rows === 1) {

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
		<h1 class =  "header" >Sửa nhà sản xuất</h1>
	</div>
	<br>


	<form action = "process_update_manufacturers.php" method = "post" id = "form-update-manufactures">
		<input type="" name="id" value = "<?php echo $array_manufacturers['id'] ?>" hidden>
		Tên nhà sản xuất
		<input type="text" name="name" value="<?php echo $array_manufacturers['name'] ?>"><br>
		Số điện thoại
		<input type="text" name="phone" value="<?php echo $array_manufacturers['phone'] ?>"><br>
		Địa chỉ
		<textarea name = "address"><?php echo $array_manufacturers['address'] ?></textarea><br>
		Hình ảnh
		<input type="text" name="image" value="<?php echo $array_manufacturers['image'] ?>"><br>
		<button>Sửa</button>
	</form>
</div>


<?php }else{ 
	$_SESSION['error'] = 'Chưa nhập id nhà sản xuất cần sửa';
	header('location:index_manufacturers.php');
	exit;
} ?>

<?php mysqli_close($connect_database); ?>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
<script src="form_update_manufacturers.js"></script>
</body>
</html>