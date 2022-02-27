$(document).ready(function() {
	$.validator.addMethod("validate_name", function (value, element) {
		return this.optional(element) || /^[a-zA-Zzàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđ 0-9]+$/.test(value);
	}, "Tên nhà sản xuất sai định dạng");

	$.validator.addMethod("validate_phone", function (value, element) {
		return this.optional(element) || /^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/.test(value);
	}, "Số điện thoại không hợp lệ");

	$.validator.addMethod("validate_image", function (value, element) {
		return this.optional(element) || /^[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)$/.test(value);
	}, "Đường dẫn tới ảnh không hợp lệ");


	$("#form-insert-manufactures").validate({
		rules: {
			"name": {
				required: true,
				minlength: 3,
				validate_name: true
			},
			"phone": {
				required: true,
				validate_phone: true
			},
			"address": {
				required: true,
				minlength: 8
				
			},
			"image": {
				required: true,
				validate_image: true
			}
		},
		messages: {
			"name": {
				required: "Bắt buộc nhập tên",
				minlength: "Hãy nhập ít nhất 3 ký tự"
			},
			"phone": {
				required: "Bắt buộc nhập số điện thoại",
			},
			"address": {
				required: "Bắt buộc nhập địa chỉ",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			},
			"image": {
				required: "Bắt buộc chọn hình ảnh"
			},
		}
	});
})
