<?php 

$token = $_POST['token'];
$new_password = $_POST['password'];

require 'admin/connect_database.php';

$sql_command_select_token = "select * from forgot_password where token = '$token' ";
$query_sql_command_select_token = mysqli_query($connect_database, $sql_command_select_token);
$array_forgot_password = mysqli_fetch_array($query_sql_command_select_token);

if ( mysqli_num_rows($query_sql_command_select_token) === 0 ) {
	header('location:index_customers.php');
	exit();
}

$id = $array_forgot_password['customer_id'];
$sql_command_update = "update customers set password = '$new_password' where id = $id ";
mysqli_query($connect_database, $sql_command_update);

$sql_command_delete_forgot_password = "delete from forgot_password where customer_id = '$id' ";
mysqli_query($connect_database, $sql_command_delete_forgot_password);

