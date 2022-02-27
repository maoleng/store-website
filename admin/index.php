<link rel="stylesheet" type="text/css" href="index_style.css">
<link rel="stylesheet" href="style_validate1.css">
<?php require 'validate.php'; ?>
<script src="https://use.typekit.net/rjb4unc.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>



<div class="container">
    <div class="logo">Đăng nhập vào vùng quản lí</div>
    <div class="login-item">
      <form action="process_login_admin.php" method="post" class="form form-login">
        <div class="form-field">
          <label class="user" for="login-username"><span class="hidden">Username</span></label>
          <input id="login-username" type="text" name="email" class="form-input" placeholder="Username" required>
        </div>

        <div class="form-field">
          <label class="lock" for="login-password"><span class="hidden">Password</span></label>
          <input id="login-password" type="password" name="password" class="form-input" placeholder="Password" required>
        </div>

        <div class="form-field">
          <input type="submit" value="Log in">
        </div>
      </form>
    </div>
</div>