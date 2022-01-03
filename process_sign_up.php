<?php 
$name = $_POST['name'];
$email = $_POST['email'];
$gender = $_POST['gender'];
$dob = $_POST['dob'];
$password = $_POST['password'];
$phone = $_POST['phone'];
$address = $_POST['address'];

require 'admin/connect_database.php';

$sql_command_check_email = "select count(*) from customers where email = '$email' ";
$query_sql_command_check_email = mysqli_query($connect_database, $sql_command_check_email);
$count_email = mysqli_fetch_array($query_sql_command_check_email)['count(*)'];

if ($count_email == 1) {
	header('location:form_sign_up.php?error=Email đã trùng');
	exit;
}

$sql_command_insert = "insert into customers (name, email, gender, dob, password, phone, address) 
value ('$name', '$email', '$gender', '$dob', '$password', '$phone', '$address') ";
mysqli_query($connect_database, $sql_command_insert);	


//gửi email báo đăng kí thành công
require 'mail.php';
$title = "Đăng kí thành công";
$content = "Chúc mừng bạn đã đăng kí thành công, phần thưởng iphone promax của bạn tại link: <a href = 'nhacai88uytinhangdau.net'>Link uy tín</a>";
send_mail($email, $name, $title, $content);



$sql_command_select = "select id from customers where email = '$email' ";
$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
$id = mysqli_fetch_array($query_sql_command_select)['id'];

session_start();
$_SESSION['name'] = $name;
$_SESSION['id'] = $id;


