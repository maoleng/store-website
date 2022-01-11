<?php 

function current_url() {
    $url      = "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    $curPageName = substr($_SERVER["SCRIPT_NAME"],strrpos($_SERVER["SCRIPT_NAME"],"/")+1);  
	$url = str_replace($curPageName, "", $url);
    return $url;
}

$email = $_POST['email'];

require 'admin/connect_database.php';

$sql_command_select_customers = "select id, name from customers where email = '$email'";
$query_sql_command_select_customers = mysqli_query($connect_database, $sql_command_select_customers);
$array_customer = mysqli_fetch_array($query_sql_command_select_customers);
$id = $array_customer['id'];


if ( mysqli_num_rows($query_sql_command_select_customers) === 1 ) {
	
	$sql_command_delete_forgot_password = "delete from forgot_password where customer_id = '$id'";
	mysqli_query($connect_database, $sql_command_delete_forgot_password);

	//lấy ra token ngẫu nhiên và insert vào bảng forgot password
	$token = uniqid();
	$sql_command_insert_token = "insert into forgot_password(customer_id, token) 
	values ('$id', '$token')";
	mysqli_query($connect_database, $sql_command_insert_token);

	//lấy link thay đổi mật khẩu mới cho người dùng
	$link = current_url() . '/form_change_new_password.php?token=' . $token;
	
	//gửi mail cho người dùng
	require 'mail.php';
	$title = "Change new password";
	$content = "Ấn vào link này để đổi mật khẩu <a href = '$link'>Hiệu lực trong 5 phút</a>";
	send_mail($email, $name, $title, $content);
}


