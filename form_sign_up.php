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
	$("#form-sign-up").validate({
		rules: {
			"name": {
				required: true,
				maxlength: 15
			},
			"email": {
				required: true,
				email: true
			},
			"password": {
				required: true,
				minlength: 8,
			}
		},
		messages: {
			"name": {
				required: "Bắt buộc nhập tên",
				maxlength: "Hãy nhập tối đa 15 ký tự"
			},
			"email": {
				required: "Bắt buộc nhập email",
				email: "Email sai định dạng"
			},
			"password": {
				minlength: "Hãy nhập ít nhất 8 ký tự",
				required: "Bắt buộc nhập mật khẩu"
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