<?php require '../check_admin_login.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.highcharts-figure,
		.highcharts-data-table table {
		  min-width: 360px;
		  max-width: 800px;
		  margin: 1em auto;
		}

		.highcharts-data-table table {
		  font-family: Verdana, sans-serif;
		  border-collapse: collapse;
		  border: 1px solid #ebebeb;
		  margin: 10px auto;
		  text-align: center;
		  width: 100%;
		  max-width: 500px;
		}

		.highcharts-data-table caption {
		  padding: 1em 0;
		  font-size: 1.2em;
		  color: #555;
		}

		.highcharts-data-table th {
		  font-weight: 600;
		  padding: 0.5em;
		}

		.highcharts-data-table td,
		.highcharts-data-table th,
		.highcharts-data-table caption {
		  padding: 0.5em;
		}

		.highcharts-data-table thead tr,
		.highcharts-data-table tr:nth-child(even) {
		  background: #f8f8f8;
		}

		.highcharts-data-table tr:hover {
		  background: #f1f7ff;
		}
	</style>
</head>

<body bgcolor="ABB1BA">
<?php
	// require '../menu.php';
	require '../connect_database.php';
	$sql_command_select = "
		SELECT sum(total_price) as 'cash_each_day', DATE_FORMAT(order_time, '%e-%m') as 'day'
		FROM receipts
		WHERE DATE(order_time) >= (CURDATE() - INTERVAL 31 DAY)
		GROUP BY DATE_FORMAT(order_time, '%d-%m')
	";
	
	$query_sql_command_select = mysqli_query($connect_database, $sql_command_select);
	$array = [];
	
	$max_day_of_this_month_to_get = 31;
	$day_today = date('d');
	$this_month = date('m');

	if ( $max_day_of_this_month_to_get > $day_today ) {
		$get_days_last_month = $max_day_of_this_month_to_get - $day_today;
		$previous_month = date("m",strtotime("-1 month"));
		$max_day_of_previous_month = date("t", strtotime($previous_month));
		$start_day_of_last_month = $max_day_of_previous_month - $get_days_last_month;	

		for ( $i = $start_day_of_last_month; $i <= $max_day_of_previous_month; $i++ ) {
			$index = $i . '-' . $previous_month;
			$array[$index] = 0;
		}
		$start_day_of_this_month = 1;
	} else {
		$start_day_of_this_month = $day_today - $max_day_of_this_month_to_get;
	}

	

	for ( $i = $start_day_of_this_month; $i <= $day_today; $i++ ) {
		$index = $i . '-' . $this_month;
		$array[$index] = 0;
	}
	foreach ($query_sql_command_select as $array_cash_each_day ) {
		$array[$array_cash_each_day['day']] = (float)$array_cash_each_day['cash_each_day'];
	}

	$arrayX = array_keys($array);
	$arrayY = array_values($array);


?>


<figure class="highcharts-figure">
  <div id="container"></div>
  <p class="highcharts-description">
    Basic line chart showing trends in a dataset. This chart includes the
    <code>series-label</code> module, which adds a label to each line for
    enhanced readability.
  </p>
</figure>


<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<script type="text/javascript">Highcharts.chart('container', {

	  title: {
	    text: 'Thống kê doanh thu 30 ngày gần nhất'
	  },

	  yAxis: {
	    title: {
	      text: 'Doanh thu'
	    }
	  },

	  xAxis: {
        categories: <?php echo json_encode($arrayX); ?>
	  },

	  legend: {
	    layout: 'vertical',
	    align: 'right',
	    verticalAlign: 'middle'
	  },

	  plotOptions: {
	    series: {
	      label: {
	        connectorAllowed: false
	      },
	    }
	  },

	  series: [{
	    name: 'Doanh thu',
	    data: <?php echo json_encode($arrayY); ?>
	  }],

	  responsive: {
	    rules: [{
	      condition: {
	        maxWidth: 500
	      },
	      chartOptions: {
	        legend: {
	          layout: 'horizontal',
	          align: 'center',
	          verticalAlign: 'bottom'
	        }
	      }
	    }]
	  }

	});
</script>

</body>
</html>