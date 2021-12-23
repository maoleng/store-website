<div class="top">
	<ul>
		<li>
			<a href="index_customers.php">Trang chủ</a>
		</li>


		<?php if (empty($_SESSION['id'])) { ?>
			<li>
				<a href="form_sign_up.php">Đăng ký</a>
			</li>
			<li>
				<a href="form_sign_in.php">Đăng nhập</a>
			</li>


		<?php } else { ?>
			<li>
				<a href="process_sign_out.php">Đăng xuất</a>
			</li>
			<li>
				<a href="view_cart.php">Xem giỏ hàng</a>
			</li>
		<?php } ?>

	</ul>
</div>

