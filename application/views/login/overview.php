<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="<?php echo base_url('img/icons/favicon.ico')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('fonts/iconic/css/material-design-iconic-font.min.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/animate/animate.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css-hamburgers/hamburgers.min.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/animsition/css/animsition.min.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/select2/select2.min.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/daterangepicker/daterangepicker.css')?> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/util.css')?> "/>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/main.css')?> "/>
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="<?= base_url() ?>auth_controller/proses_login" method="post">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100">
						<input class="input100" type="text" name="username">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="submit" name="submit" class="login100-form-btn">
								Login
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

						<a class="txt2" href="#">
							Sign Up
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="<?php echo base_url('assets/jquery/jquery-3.2.1.min.js')?> "></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url('assets/animsition/js/animsition.min.js')?> "></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url('assets/bootstrap/js/popper.js')?> "></script>
	<script src="<?php echo base_url('assets/bootstrap/js/bootstrap.min.js')?> "></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url('assets/select2/select2.min.js')?> "></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url('assets/daterangepicker/moment.min.js')?> "></script>
	<script src="<?php echo base_url('assets/daterangepicker/daterangepicker.js')?> "></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url('assets/countdowntime/countdowntime.js')?> "></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url('js/main.js')?> "></script>

</body>
</html>
