<?php session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="style_index_customers.css">
	<link rel="stylesheet" href="admin/style_validate.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body bgcolor="ABB1BA">
<?php require 'admin/validate.php' ?>
<div class="all">
	<?php require 'menu_customers.php' ?>

	<?php require 'products_customers.php' ?>

	<?php require 'footer_customers.php' ?>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".button-add-to-cart").click(function() {
		var id = $(this).data("id");
		
		$.ajax({
			url: 'process_add_to_cart.php',
			type: 'get',
			// dataType: 'default: Intelligent Guess (Other values: xml, json, script, or html)',
			data: {id},
		})
		.done(function(data) {
			if ( data == 1 ) { 
				console.log("thanh cong roi dmmm")
			} else {
				console.log(data)
			}
			
		})
	})


})
</script>

</body>
</html>