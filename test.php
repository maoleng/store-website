<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form>
	Điền gì đó đi<br>
	<input type="text" name="ten" id = "ten">
	<br>
	<button>Oke</button>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">

		$(document).ready(function() {
			$("#ten").val("Loc")
		});
	</script>

</form>
</body>
</html>