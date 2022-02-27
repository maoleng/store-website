$(document).ready(function() {
	$("form").keypress(function(event) {
		if ( event.keyCode === 13 ) {
			event.preventDefault()
		}
	})
	var types = new Bloodhound({
		datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
		queryTokenizer: Bloodhound.tokenizers.whitespace,
		remote: {
			url: 'list_type.php?q=%QUERY',
			wildcard: '%QUERY'
		}
	})
	types.initialize();

	$('#type').tagsinput({
		typeaheadjs: {
			displayKey: 'name',
			valueKey: 'name',
			source: types.ttAdapter()
		}
	})

})


$(document).ready(function() {
	$.validator.addMethod("validate_name", function (value, element) {
		return this.optional(element) || /^[a-zA-Zzàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđ 0-9]+$/.test(value);
	}, "Tên nhà sản phẩm sai định dạng");

	$.validator.addMethod("validate_price", function (value, element) {
		return this.optional(element) || /^[0-9]+$/.test(value);
	}, "Giá sản phẩm không hợp lệ");


	$("#form-insert-products").validate({
		rules: {
			"name": {
				required: true,
				minlength: 3,
				validate_name: true
			},
			"description": {
				required: true,
				minlength: 10
				
			},
			"price": {
				required: true,
				validate_price: true
			},
			"image": {
				required: true,
			}
		},
		messages: {
			"name": {
				required: "Bắt buộc nhập tên",
				minlength: "Hãy nhập ít nhất 3 ký tự"
			},
			"description": {
				required: "Bắt buộc nhập mô tả",
				minlength: "Hãy nhập ít nhất 10 ký tự"
			},
			"price": {
				required: "Bắt buộc nhập vào giá sản phẩm",
			},
			"image": {
				required: "Bắt buộc chọn hình ảnh"
			},
		}
	});
})