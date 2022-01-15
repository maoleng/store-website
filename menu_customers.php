<div class="top">
	<ul>
		<li>
			<a href="index_customers.php">Trang chủ</a>
		</li>


		<?php if (empty($_SESSION['id'])) { ?>
			<li>
				<button type="button" data-toggle="modal" data-target="#modal-sign-up">
					Đăng ký
				</button>
			</li>
			<?php include 'form_sign_up.php'; ?>
			<li>
				<a href="form_sign_in.php">Đăng nhập</a>
			</li>


		<?php } else { ?>
			Xin chào bạn 
			<?php echo $_SESSION['name'] ?>
			<li>
				<a href="process_sign_out.php">Đăng xuất</a>
			</li>
			<li>
				<a href="view_cart.php">Xem giỏ hàng</a>
			</li>
		<?php } ?>

	</ul>
</div>

