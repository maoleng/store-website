<?php require '../check_admin_login.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../index3.css">
	<link rel="stylesheet" href="../style_validate1.css">
	<link rel="stylesheet" type="text/css" href="../style_table.css">
</head>

<?php
$id = $_GET['id'];

require '../connect_database.php';

$sql_select_name = "SELECT name FROM customers WHERE id = '$id'";
$name = mysqli_fetch_array(mysqli_query($connect_database, $sql_select_name))['name'] ;

$sql_select = "
	SELECT receipts.*, customers.name as 'customer_name', customers.email as 'customer_email', customers.phone as 'customer_phone' 
	FROM receipts
	JOIN customers on customers.id = receipts.customer_id
	WHERE customer_id = '$id'
";
$query_select = mysqli_query($connect_database, $sql_select);

?>


<body> 
<?php require '../menu.php'; ?>
<div class="top">
	<div class = "search">
		<form class = "form_search">
			Tìm kiếm
			<input type="search" name="search" value = "<?php echo $content_search ?>">
			<button>
				<img src="../style/style_image/icon_search.png" width="50px">
			</button>
		</form>
	</div>

	<div class = "login">
		<a class = "login" href="https://google.com">Đăng nhập</a>
	</div> 
</div>

<div class = "bot">
	<div class = "header">
		<h1 class =  "header" >CÁC HÓA ĐƠN <?php echo $name ?> ĐÃ ĐẶT</h1>
	</div>
	<br>

	<?php require '../validate.php' ?>
	<table class = "table">
		<tr>
			<th>Mã</th>
			<th>Thời gian đặt</th>
			<th>Người đặt</th>
			<th>Người nhận</th>
			<th>Trạng thái</th>
			<th>Tổng tiền</th>
			<th>Xem chi tiết</th>
			<th>Duyệt</th>
		</tr> 

		<?php foreach ($query_select as $each_receipt) : ?>
		<?php if ($each_receipt['status'] == 2 || $each_receipt['status'] == 4 ) { ?>
		<tr>
			<td><?php echo $each_receipt['id'] ?></td>
			<td><?php echo $each_receipt['order_time'] ?></td>
			<td>
				<?php echo $each_receipt['customer_name'] ?><br>
			</td>
			<td>
				<?php echo $each_receipt['receiver_name'] ?><br>
				<?php echo $each_receipt['receiver_phone'] ?><br>
				<?php echo $each_receipt['receiver_address'] ?><br>
			</td>
			<td>
				<?php 
				switch ($each_receipt['status']) {
					case 2:
						echo 'Chưa duyệt';
						break;							
					case 4:
						echo 'Đang giao hàng';
						break;
				}
				 ?>
			</td>
			<td><?php echo $each_receipt['total_price'] ?></td>
			<td>
				<a href="../receipts/detail_receipt.php?id=<?php echo $each_receipt['id'] ?>">Xem</a>
			</td>
			<td>
				<?php if ( $each_receipt['status'] == 2 ) { ?>
					<a href="../receipts/update_receipt.php?id=<?php echo $each_receipt['id'] ?>&status=4&customer_id=<?php echo $id ?>">Duyệt đơn hàng</a>
				<?php } ?>
				<br>
				<?php if ( $each_receipt['status'] == 4 ) { ?>
					<a href="../receipts/update_receipt.php?id=<?php echo $each_receipt['id'] ?>&status=5&customer_id=<?php echo $id ?>">Giao thành công</a>
				<?php } ?>
				<br>
				<a href="../receipts/update_receipt.php?id=<?php echo $each_receipt['id'] ?>&status=3&customer_id=<?php echo $id ?>">Hủy đơn hàng</a>
			</td>
			
		</tr>
		<?php } ?>
		<?php endforeach ?>
		 
	</table>


</div>

</body>
</html>
