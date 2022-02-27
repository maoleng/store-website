<?php require '../check_super_admin_login.php';  ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../index3.css">
	<link rel="stylesheet" type="text/css" href="style_chart.css">
	<link rel="stylesheet" type="text/css" href="../style_table.css">
</head>

<body> 
<?php require '../menu.php'; ?>
<div class="top">
	<!-- <div class = "search">
		<form class = "form_search">
			Tìm kiếm
			<input type="search" name="search" value = "<?php echo $content_search ?>">
			<button>
				<img src="../style/style_image/icon_search.png" width="50px">
			</button>
		</form>
	</div> -->

	<div class = "login">
		<span>Xin chào <?php echo $_SESSION['name'] ?></span>
	</div>
</div>

<div class = "bot">
	<div class = "header">
		<h1 class =  "header" >THỐNG KÊ HÓA ĐƠN THEO TRẠNG THÁI</h1>
	</div>
	Thống kê theo
	<select>
		<option disabled selected>Chọn cách thống kê</option>
		<option class="option_day_to_day" value = "1">Ngày chỉ định tới ngày chỉ định</option>
		<option class="option_days_ago" value="2">Số ngày gần đây (tối đa 30)</option>
		<option class="option_month" value="3">Tháng</option>
	</select>
	<br>
	<form>
		<input type="date"  id = "input_day_to_day_1" hidden>
		<br>
		<input type="date"  id = "input_day_to_day_2" hidden>
		<p id = "tips" hidden>Chọn xong rồi click chuột ra ngoài để thấy biểu đồ</p>
		<input type="number"  id = "input_days_ago" hidden>
		<input type="month"  id = "input_month" hidden>
	</form>
	
	<figure class="highcharts-figure">
		<div id="container"></div>
	</figure>


</div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script src="chart.js"></script>
</body>
</html>