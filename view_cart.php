<?php 
session_start();
 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body bgcolor = "#FFFFFFF">
	<?php $cart = $_SESSION['cart'];
	if (empty($cart)) {
		$_SESSION['error'] = "Chưa có gì trong giỏ hàng";
		echo $_SESSION['error'];
	}

	$money_of_all = 0;

	?>

	<table width="100%" border="1px solid black">
		<tr>
	 		<th>Ảnh</th>
		 	<th>Tên sản phẩm</th>
		 	<th>Giá</th>
		 	<th>Số lượng</th>
		 	<th>Tổng tiền</th>
		 	<th>Xóa</th>
		<tr>

		<tr>
			<?php foreach ($cart as $id => $array_products) : ?>
				
				<tr>
					<td>
						<img height = "100px" src="admin/products/<?php echo $array_products['image'] ?>">
					</td>
					<td><?php echo $array_products['name'] ?></td>
					<td><?php echo $array_products['price'] ?></td>
					<td>
						<a href="process_update_quantity_in_cart.php?id=<?php echo $id ?>&type=decrease">-</a>
						<?php echo $array_products['quantity']; ?>
						<a href="process_update_quantity_in_cart.php?id=<?php echo $id ?>&type=increase">+</a>
					</td>
					<td><?php echo $array_products['quantity'] * $array_products['price'] ?></td>
					<td>
						<a href="process_delete_cart.php?id=<?php echo $id ?>">Xóa</a>
					</td>
				</tr>

					<?php  
						$money_of_thing = $array_products['price'] * $array_products['quantity'];
						$money_of_all += $money_of_thing;
					?>


				
			<?php endforeach ?>
		</tr>

 	</table>

	<h1> 	Tổng tiền là <?php echo $money_of_all ?> </h1>


	<?php 
	//lấy lại thông tin khách hàng và điền vào input
	$id = $_SESSION['id'];

	require 'admin/connect_database.php';
	$sql_command_select = "select * from customers where id = '$id' ";

	$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
	$array_customer = mysqli_fetch_array($query_sql_command_select);

	?>


	<form method = "post" action = "process_order.php">
		Tên người nhận
		<input type="text" name="receiver_name" value = "<?php echo $array_customer['name'] ?> "><br>
		Số điện thoại người nhận
		<input type="text" name="receiver_phone" value = "<?php echo $array_customer['phone'] ?>"><br>
		Địa chỉ người nhận
		<input type="text" name="receiver_address" value = "<?php echo $array_customer['address'] ?>" ><br>
		<button>Đặt hàng</button>
	</form>

</body>
</html>