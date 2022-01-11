<?php require 'admin/connect_database.php'; 
	$sql_command_select = "select * from products";
	$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
?>


<div class="mid">
	

	<?php foreach ($query_sql_command_select as $array_products):  ?>	
		<div class = "product">
			<h1><?php echo $array_products['name'] ?></h1>
			<br>
			<img src="admin/products/<?php echo $array_products['image'] ?>" height = 100px>
			<br>
			$<?php echo $array_products['price'] ?>
			<br>
			<a href="each_product.php?id=<?php echo $array_products['id'] ?>">Xem chi tiết</a>
			<br>

			<?php if (isset($_SESSION['id'])) { ?>
				<a href="process_add_to_cart.php?id=<?php echo $array_products['id'] ?>">Thêm vào giỏ hàng</a>
			<?php }	 ?>

		</div>



	<?php endforeach ?>





</div>