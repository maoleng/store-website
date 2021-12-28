<?php require '../check_admin_login.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php 
require '../connect_database.php';
$sql_command_select = "select receipts.*, customers.name, customers.address, customers.phone from receipts join customers on receipts.customer_id = customers.id ";
$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);




 ?>

<table width = "100%" border = "1px">
	<tr>
		<th>Mã</th>
		<th>Thời gian đặt</th>
		<th>Thông tin người nhận</th>
		<th>Thông tin người đặt</th>
		<th>Trạng thái</th>
		<th>Tổng tiền</th>
		<th>Xem chi tiết</th>
		<th>Duyệt</th>
	</tr>

	<?php foreach ($query_sql_command_select as $array_receipts) : ?>
	<tr>
		<td><?php echo $array_receipts['id'] ?></td>
		<td><?php echo $array_receipts['order_time'] ?></td>
		<td>
			<?php echo $array_receipts['receiver_name'] ?><br>
			<?php echo $array_receipts['receiver_phone'] ?><br>
			<?php echo $array_receipts['receiver_address'] ?>
		</td>
		<td>
			<?php echo $array_receipts['name'] ?><br>
			<?php echo $array_receipts['phone'] ?><br>
			<?php echo $array_receipts['address'] ?>
		</td>
		<td>
			<?php 
			switch ($array_receipts['status']) {
				case 0:
					echo 'Chưa giao hàng';
					break;
				
				case 1:
					echo 'Đã giao hàng';
					break;
				case 2:
					echo 'Đã hủy';
					break;
			}
			 ?>
			
		</td>
		<td><?php echo $array_receipts['total_price'] ?></td>
		<td>
			<a href="detail_receipt.php?id=<?php echo $array_receipts['id'] ?>">
				Xem
			</a>
		</td>
		<td>
			<a href="update_receipt.php?id=<?php echo $array_receipts['id'] ?>&status=1">Duyệt đơn hàng</a>
			<br>
			<a href="update_receipt.php?id=<?php echo $array_receipts['id'] ?>&status=2">Hủy đơn hàng</a>
		</td>

	</tr>
	


	<?php endforeach ?>
	 

</table>

</body>
</html>