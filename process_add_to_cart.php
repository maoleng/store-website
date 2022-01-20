<?php 

	
try {
	session_start();
	// unset($_SESSION['cart']);

	if ( empty($_GET['id']) ) {
		throw new Exception("Không tồn tại id");
		
	}

	$id = $_GET['id'];
	if ( empty($_SESSION['cart'][$id]) ) { 
		require 'admin/connect_database.php';
		$sql_command_select = "select * from products where id = '$id' ";
		$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
		$array_products = mysqli_fetch_array($query_sql_command_select);
		
		$_SESSION['cart'][$id]['image'] = $array_products['image'];
		$_SESSION['cart'][$id]['name'] = $array_products['name'];
		$_SESSION['cart'][$id]['price'] = $array_products['price'];
		$_SESSION['cart'][$id]['quantity'] = 1;

	} else {
		$_SESSION['cart'][$id]['quantity']++;		
	}
	echo 1;	
} catch (Exception $e) {
	echo $e->getMessage();
}