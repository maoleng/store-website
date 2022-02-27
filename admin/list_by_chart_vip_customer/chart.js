$(document).ready(function() {
	$.ajax({
		url: 'get_cash_vip_customer.php',
		dataType: 'json',
	})
	.done(function(response) {
		var arrayX = Object.keys(response)
		var arrayY = Object.values(response)
		console.log(arrayX)
		console.log(arrayY)
		get_chart(arrayX, arrayY)
	})
})

function get_chart(arrayX, arrayY) {
	Highcharts.chart('container', {
		chart: {
			type: 'cylinder',
			options3d: {
				enabled: true,
				alpha: 15,
				beta: 15,
				depth: 50,
				viewDistance: 25
			}
		},
		title: {
			text: 'Khách hàng thân thiết'
		},
		plotOptions: {
			series: {
				depth: 25,
				colorByPoint: true
			}
		},
		xAxis: {
			title: {
				text: 'Số tiền khách hàng đầu tư'
			},
			categories: arrayX,
			labels: {
				skew3d: true,
				style: {
					fontSize: '16px'
				}
			}
		},
		yAxis: {
			title: {
				text: 'Đồng'
			}
		},
		series: [{
			data: arrayY,
			name: 'Số tiền đầu tư',
			showInLegend: false
		}]
	})
}