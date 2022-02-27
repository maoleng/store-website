
$(document).ready(function() {
	$("form").keypress(function(event) {
		if ( event.keyCode === 13 ) {
			event.preventDefault()
		}
	})
	
	$('select').on('change', function (e) {
		var optionSelected = $("option:selected", this);
		var valueSelected = this.value;
		switch ( valueSelected ) {
			case "1":
			$("#input_day_to_day_1").show()
			$("#input_day_to_day_2").show()
			$("#tips").hide()
			$("#input_days_ago").hide()
			$("#input_month").hide()
			break
			case "2":
			$("#input_days_ago").show()
			$("#tips").show()
			$("#input_day_to_day_1").hide()
			$("#input_day_to_day_2").hide()
			$("#input_month").hide()
			break
			case "3":
			$("#input_month").show()
			$("#input_days_ago").hide()
			$("#tips").hide()
			$("#input_day_to_day_1").hide()
			$("#input_day_to_day_2").hide()
			break	
		}

		$("#input_month, #input_days_ago, #input_day_to_day_1, #input_day_to_day_2").change(function(event) {
			switch ( valueSelected ) {
				case "1":
				var day_to_day_1 = $("#input_day_to_day_1").val()
				var day_to_day_2 = $("#input_day_to_day_2").val()
				var header_chart = " từ " + day_to_day_1 + " đến " + day_to_day_2
				$.ajax({
					url: 'get_receipts.php',
					type: 'get',
					dataType: 'json',
					data: {day_to_day_1, day_to_day_2},
				})
				.done(function(response) {
					const array = Object.values(response)
					get_chart(array, days)
				})
				break

				case "2":
				var days = $("#input_days_ago").val()
				var header_chart = " trong " + days + " ngày gần đây"
				$.ajax({
					url: 'get_receipts.php',
					type: 'get',
					dataType: 'json',
					data: {days},
				})
				.done(function(response) {
					const array = Object.values(response)
					get_chart(array, days)
				})
				break

				case "3":
				var month = $("#input_month").val()
				var header_chart = " trong tháng " + month
				$.ajax({
					url: 'get_receipts.php',
					type: 'get',
					dataType: 'json',
					data: {month},
				})
				.done(function(response) {
					const array = Object.values(response)
					get_chart(array, days)
				})
				break

			}
			
			function get_chart(array, days) {
				Highcharts.chart('container', {
					chart: {
						plotBackgroundColor: null,
						plotBorderWidth: null,
						plotShadow: false,
						type: 'pie'
					},
					title: {
						text: 'Thống kê hóa đơn theo trạng thái ' + header_chart
					},
					tooltip: {
						pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					},
					accessibility: {
						point: {
							valueSuffix: '%'
						}
					},
					plotOptions: {
						pie: {
							allowPointSelect: true,
							cursor: 'pointer',
							dataLabels: {
								enabled: true,
								format: '<b>{point.name}</b>: {point.percentage:.1f} %'
							}
						}
					},
					series: [{
						name: 'Brands',
						colorByPoint: true,
						data: array
					}]
				});
			}
			
		})
	})
})