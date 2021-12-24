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

			<?php endforeach ?>
		</tr>

 	</table>
</body>
</html>