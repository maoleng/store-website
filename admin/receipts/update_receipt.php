<?php 

$id = $_GET['id'];
$status = $_GET['status'];

require '../connect_database.php';

if ($status == 1) {
	$sql_command_update = "update receipts set status = 1 where id = $id";
	mysqli_query($connect_database, $sql_command_update);
} else if ($status == 2 ) {
	$sql_command_update = "update receipts set status = 2 where id = $id";
	mysqli_query($connect_database, $sql_command_update);
} else if ($status == 3 ) {
	$sql_command_update = "update receipts set status = 3 where id = $id";
	mysqli_query($connect_database, $sql_command_update);
}


