<?php 

session_start();

if (empty($_SESSION['level'])) {
	header('location:../index.php?error=Chưa đăng nhập');
}
