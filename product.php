<?php require 'admin/connect_database.php'; 
	$id = $_GET['id'];
	$sql_command_select = "select * from products where id = '$id' ";
	$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);

	$array_products = mysqli_fetch_array($query_sql_command_select);
?>


<div class="mid">
	
	<div class = "each_product">
		<h1><?php echo $array_products['name'] ?></h1>
		<br>
		<img src="admin/products/<?php echo $array_products['image'] ?>" height = 100px>
		<br>
		

	</div>


</div>