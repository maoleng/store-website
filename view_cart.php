<?php 
session_start();
 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php $cart = $_SESSION['cart'];

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
					<td><?php echo $array_products['quantity']; ?></td>
					<td><?php echo $array_products['quantity'] * $array_products['price'] ?></td>
				</tr>

			<?php endforeach ?>
		</tr>

 	</table>
</body>
</html>