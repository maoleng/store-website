$("#form-change-name").validate({
	rules: {
		"name": {
			required: true,
			minlength: 3,
			validate_name: true
		}
	},
	messages: {
		"name": {
			required: "Bắt buộc nhập tên",
			minlength: "Hãy nhập ít nhất 3 ký tự"
		}
	}
})