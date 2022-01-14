<?php 
session_start();
 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body bgcolor = "#7F7F7F">
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
						<button class = "button-update-quantity" data-id='<?php echo $id ?>' data-type='decrease'> 
							-
						</button>
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
						<button class = "button-delete" data-id='<?php echo $id ?>'>
							Xóa
						</button>
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
				if ( type == 'increase' ) {
					quantity++;
				} else {
					quantity--;
				}
				if ( quantity == 0 ) {
					parent_tr.remove();
				} else {
					parent_tr.find('.span-quantity').text(quantity)
					var sum = price * quantity
					parent_tr.find('.span-sum').text(sum)
				}
				get_total()
			})
		})

		$(".button-delete").click(function() {
			var button = $(this)
			var id = button.data('id')
			var total = Number($('.span-total').text())
			var sum = Number($('.span-sum').text())
			var	parent_tr = button.parents('tr')
			$.ajax({
				url: 'process_delete_cart.php',
				type: 'get',
				data: {id},
			})
			.done(function() {
				parent_tr.remove()
				get_total()
			})
		})
	})	

	function get_total() {
		var total = 0
		$('.span-sum').each(function() {
			total += Number($(this).text())
		})
		$('.span-total').text(total)
	}
	</script>

</body>
</html>