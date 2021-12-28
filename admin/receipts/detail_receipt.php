<?php require '../check_admin_login.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php 
$id = $_GET['id'];

require '../connect_database.php';
$sql_command_select = "select * from receipt_detail join products on receipt_detail.product_id = products.id where 	receipt_detail.receipt_id = $id";

$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
$money_of_all = 0;

 ?>

<table border="1px" width = "100%">
	<tr>
		<th>Ảnh</th>
		<th>Tên sản phẩm</th>
		<th>Giá</th>
		<th>Số lượng</th>
		<th>Tổng tiền</th>
	</tr>


	<?php foreach ($query_sql_command_select as $array_receipts) : ?>
	<tr>
		<td>
			<img src="../products/<?php echo $array_receipts['image'] ?>" height = "100px">
		</td>
		<td><?php echo $array_receipts['name'] ?></td>
		<td><?php echo $array_receipts['price'] ?></td>
		<td><?php echo $array_receipts['quantity'] ?></td>
		<td><?php echo $array_receipts['quantity'] * $array_receipts['price'] ?></td>
	</tr>
	
	<?php $money_of_all += $array_receipts['quantity'] * $array_receipts['price'] ?>

	<?php endforeach ?>
</table>

<h1>
	Tổng tiền là: <?php echo $money_of_all ?>
</h1>

</body>
</html>