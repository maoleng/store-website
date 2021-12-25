<?php 

session_start();
$cart = $_SESSION['cart'];

$receiver_phone = $_POST['receiver_phone'];
$receiver_name = $_POST['receiver_name'];
$receiver_address = $_POST['receiver_address'];


$price_of_total = 0;
foreach ($cart as $array_cart) {
	$price_of_product = $array_cart['price'] * $array_cart['quantity'];
	$price_of_total += $price_of_product;
}

require 'admin/connect_database.php';

$customer_id = $_SESSION['id'];
$status = 0; //vừa mới đặt

$sql_command_insert_receipts = "insert into receipts (customer_id, receiver_name, receiver_phone, receiver_address, status, total_price)
values ('$customer_id', '$receiver_name', '$receiver_phone', '$receiver_address', '$status', '$price_of_total') ";

mysqli_query($connect_database, $sql_command_insert_receipts);

//lấy ra id vừa insert vào bảng hóa đơn
$sql_command_select = "select max(id) from receipts where customer_id = '$customer_id' " ;
$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
$order_id = mysqli_fetch_array($query_sql_command_select)['max(id)'];



foreach ($cart as $product_id => $array_products) {
	$quantity = $array_products['quantity'];
	$sql_command_insert_receipt_detail = "insert into receipt_detail (receipt_id, product_id, quantity) 
	values ('$order_id', '$product_id', '$quantity') ";
	mysqli_query($connect_database, $sql_command_insert_receipt_detail);
}


unset($_SESSION['cart']);

header('location:index_customers.php');