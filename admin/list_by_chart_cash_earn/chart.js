
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
			$("#input_year").show()
			$("#tips").hide()
			$("#input_days_ago").hide()
			$("#input_month").hide()
			break
			case "2":
			$("#input_days_ago").show()
			$("#tips").show()
			$("#input_year").hide()
			$("#input_month").hide()
			break
			case "3":
			$("#input_month").show()
			$("#input_days_ago").hide()
			$("#tips").hide()
			$("#input_year").hide()
			break	
		}

		$("#input_month, #input_days_ago, #input_year").change(function(event) {
			switch ( valueSelected ) {
				case "1":
				var year = $("#input_year").val()
				var header_chart = " theo năm " + year
				$.ajax({
					url: 'get_cash_earned.php',
					type: 'get',
					dataType: 'json',
					data: {year},
				})
				.done(function(response) {
					var arrayX = Object.keys(response)
					var arrayY = Object.values(response)
					get_chart(arrayX, arrayY)
				})
				break

				case "2":
				var days = $("#input_days_ago").val()
				var header_chart = " trong " + days + " ngày gần đây"
				$.ajax({
					url: 'get_cash_earned.php',
					type: 'get',
					dataType: 'json',
					data: {days},
				})
				.done(function(response) {
					var arrayX = Object.keys(response)
					var arrayY = Object.values(response)
					get_chart(arrayX, arrayY)
				})
				break

				case "3":
				var month = $("#input_month").val()
				var header_chart = " trong tháng " + month
				$.ajax({
					url: 'get_cash_earned.php',
					type: 'get',
					dataType: 'json',
					data: {month},
				})
				.done(function(response) {
					var arrayX = Object.keys(response)
					var arrayY = Object.values(response)
					get_chart(arrayX, arrayY)
				})
				break
			}

			function get_chart(arrayX, arrayY) {
				Highcharts.chart('container', {

					title: {
						text: 'Thống kê doanh thu ' + header_chart
					},

					yAxis: {
						title: {
							text: 'Doanh thu'
						}
					},

					xAxis: {
						categories: arrayX
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
						data: arrayY
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

				})
			}

		})

	})
})