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
					url: 'get_products_sold.php',
					type: 'get',
					dataType: 'json',
					data: {day_to_day_1, day_to_day_2},
				})
				.done(function(response) {
					console.log('1')
					const array = Object.values(response[0])
					const array_detail = []
					Object.values(response[1]).forEach((each) => {
						each.data = Object.values(each.data)
						array_detail.push(each)
					})
					setTimeout(function() {get_chart(array, array_detail)}, 1)
				})
				break

				case "2":
				var days = $("#input_days_ago").val()
				var header_chart = " trong " + days + " ngày gần đây"
				$.ajax({
					url: 'get_products_sold.php',
					type: 'get',
					dataType: 'json',
					data: {days},
				})
				.done(function(response) {
					const array = Object.values(response[0])
					const array_detail = []
					Object.values(response[1]).forEach((each) => {
						each.data = Object.values(each.data)
						array_detail.push(each)
					})
					setTimeout(function() {get_chart(array, array_detail)}, 1)
				})
				break

				case "3":
				var month = $("#input_month").val()
				var header_chart = " trong tháng " + month
				$.ajax({
					url: 'get_products_sold.php',
					type: 'get',
					dataType: 'json',
					data: {month},
				})
				.done(function(response) {
					const array = Object.values(response[0])
					const array_detail = []
					Object.values(response[1]).forEach((each) => {
						each.data = Object.values(each.data)
						array_detail.push(each)
					})
					setTimeout(function() {get_chart(array, array_detail)}, 1)
				})
				break

			}
			



			function get_chart(array, array_detail) {
				Highcharts.chart('container_1', {
					chart: {
						type: 'column'
					},
					title: {
						text: 'Tổng số sản phẩm bán được' + header_chart
					},
					accessibility: {
						announceNewData: {
							enabled: true
						}
					},
					xAxis: {
						type: 'category'
					},
					yAxis: {
						title: {
							text: 'Tổng số sản phẩm bán được'
						}
					},
					legend: {
						enabled: false
					},
					plotOptions: {
						series: {
							borderWidth: 0,
							dataLabels: {
								enabled: true,
								format: '{point.y:.f}'
							}
						}
					},

					tooltip: {
						headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
						pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.f}</b> of total<br/>'
					},

					series: [
					{
						name: "Tổng số sản phẩm bán được",
						colorByPoint: true,
						data: array
					}
					],
					drilldown: {
						series: array_detail
					}

				})
			}
		})

	})
})