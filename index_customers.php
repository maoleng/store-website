<?php session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="style_index_customers.css">
	<link rel="stylesheet" href="admin/style_validate.css">
</head>
<body bgcolor="ABB1BA">
<?php require 'admin/validate.php' ?>
<div class="all">
	<?php require 'menu_customers.php' ?>

	<?php require 'products_customers.php' ?>

	
	<?php require 'footer_customers.php' ?>
</div>

</body>
</html>