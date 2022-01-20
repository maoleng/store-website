<div id = "modal-sign-up"  class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form method = "post" id = "form-sign-up">
				<div class="alert alert-danger" id = "div-error" style="display: none">
				</div>
				<?php require 'admin/validate.php' ?>
				<div class = "modal-header">
					<h1>Form đăng kí</h1>	
				</div>
				Họ và tên
				<input type="text" name="name"><br>
				Email
				<input type="email" name="email"><br>
				Số điện thoại
				<input type="text" name="phone"><br>
				Giới tính<br>
				<input type="radio" value = "Nam" name="gender">Nam<br>
				<input type="radio" value = "Nữ" name="gender">Nữ<br>
				Ngày sinh
				<input type="date" name="dob"><br>
				Địa chỉ
				<input type="text" name = "address"><br>
				Mật khẩu
				<input type="password" name="password"><br>
				<button>Đăng ký</button>

			</form>
		</div>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$.validator.addMethod("regx", function(value, element, regexpr) {          
    	return regexpr.test(value);
	}, "Please enter a valid pasword.");
	$("#form-sign-up").validate({
		rules: {
			"name": {
				required: true,
				maxlength: 15,
				regx: /^[a-z]+$/,
			},
			"password": {
				required: true,
				minlength: 8
			},
			"email": {
				required: true,
				email: true
			}
		},
		messages: {
			"name": {
				required: "Bắt buộc nhập username",
				maxlength: "Hãy nhập tối đa 15 ký tự",
	            regx: "Sai dinh dang ten",

			},
			"password": {
				required: "Bắt buộc nhập password",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			},
			"email": {
				required: "Bắt buộc nhập email",
				email: "Sai dinh dang email"
			}
		},
		submitHandler: function() {
			$.ajax({
				url: 'process_sign_up.php',
				type: 'post',
				dataType: 'html',
				data: $("#form-sign-up").serializeArray(),
			})
			.done(function(response) {
				if ( response != '1' ) {
					$("#div-error").text(response)
					$("#div-error").show()
				}else {
					$("#form-sign-up").toggle()
					$(".modal-backdrop").hide()
					$("#modal-sign-up").hide()
				}
			})
		}
	});
})
</script>