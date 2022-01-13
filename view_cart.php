<?php 
session_start();
 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body bgcolor = "#36393F">
	<?php $cart = $_SESSION['cart'];
	if (empty($cart)) {
		$_SESSION['error'] = "Chưa có gì trong giỏ hàng";
		echo $_SESSION['error'];
	}

	$total = 0;

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
					<?php
						$sum = $array_products['price'] * $array_products['quantity'];
						$total += $sum;
					?>
				<tr>
					<td>
						<img height = "100px" src="admin/products/<?php echo $array_products['image'] ?>">
					</td>
					<td><?php echo $array_products['name'] ?></td>
					<td>
						<span class = "span-price">
							<?php echo $array_products['price'] ?>	
						</span>
					</td>
					<td>
						<a href="process_update_quantity_in_cart.php?id=<?php echo $id ?>&type=decrease">-</a>
						<span class = "span-quantity">
							<?php echo $array_products['quantity']; ?>	
						</span>
						<button class = "button-update-quantity" data-id='<?php echo $id ?>' data-type='increase'> 
							+
						</button>
					</td>
					<td>
						<span class = "span-sum">
							<?php echo $sum ?>
						</span>
					</td>
					<td>
						<a href="process_delete_cart.php?id=<?php echo $id ?>">Xóa</a>
					</td>
				</tr>

					
			<?php endforeach ?>
		</tr>

 	</table>

	<h1>
		Tổng tiền là 
		<span class = "span-total">
			<?php echo $total ?> 
		</span>
	</h1>


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



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$(".button-update-quantity").click(function(event) {
			var button = $(this)
			var id = button.data('id')
			var type = button.data('type')

			$.ajax({
				url: 'process_update_quantity_in_cart.php',
				type: 'get',
				data: {id,type},
			})
			.done(function() {
				var parent_tr = button.parents('tr')
				var quantity = parent_tr.find('.span-quantity').text()
				var price = parent_tr.find('.span-price').text()
				quantity++
				parent_tr.find('.span-quantity').text(quantity)
				var sum = price * quantity
				parent_tr.find('.span-sum').text(sum)

				var total = 0
				$('.span-sum').each(function() {
					total += Number($(this).text())
				})
				$('.span-total').text(total)

			})
		});
	});		
	</script>

</body>
</html>