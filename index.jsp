<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="st.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	href="https://unpkg.com/@coreui/coreui/dist/css/coreui.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('https://buntingfamilypharmacy.com/wp-content/uploads/2019/01/50-Beautiful-and-Minimalist-Presentation-Backgrounds-031.jpg');">
			<div class="container">
				<ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="pills-home-tab" data-toggle="pill" href="#pills-home"
						role="tab" aria-controls="pills-home" aria-selected="true">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
						role="tab" aria-controls="pills-profile" aria-selected="false">SIGN
							UP</a></li>
				</ul>
			</div>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="pills-home"
					role="tabpanel" aria-labelledby="pills-home-tab">
					<div class="wrap-login100">
						<form class="login100-form validate-form" action="login">
							<span class="login100-form-logo"> <img
								src="https://img.icons8.com/cotton/64/000000/login-rounded-right--v2.png" />
							</span> <span class="login100-form-title ">Login</span>
							<div class="wrap-input100 validate-input alter-validate"
								data-validate="Enter Username">
								<%--                  fa fa-user icon--%>
								<input class="input100" type="text" name="username"
									placeholder="Username"> <span class="focus-input100"></span>
								<span class="symbol-input100"> <i class="fa fa-user icon"
									aria-hidden="true"></i>
								</span>
							</div>
							<div class="wrap-input100 validate-input"
								data-validate="Enter password">
								<input class="input100" type="password" name="pass"
									placeholder="Password"> <span class="focus-input100"
									data-placeholder=""></span> <span class="symbol-input100">
									<i class="fa fa-key icon" aria-hidden="true"></i>
								</span>
							</div>
							<div class="contact100-form-checkbox">
								<input class="input-checkbox100" id="checkbox" type="checkbox"
									name="remember-me"> <label class="label-checkbox100">Remember
									me </label>
							</div>
							<div class="container-login100-form-btn">
								<button type="submit" class="d-inline p-2 bg-dark text-white"
									style="background-color: #333333" style="border-color: black">
									Login</button>

							</div>
							<div class="text-center p-t-90">
								<a class="txt1" href="#">Forgot Password? </a>
							</div>
						</form>
					</div>
				</div>
				<div class="tab-pane fade" id="pills-profile" role="tabpanel"
					aria-labelledby="pills-profile-tab">
					<div class="wrap-login100">
						<form class="login100-form validate-form" action="signup">
							 <span class="login100-form-logo"> <img
								src="https://img.icons8.com/cotton/64/000000/login-rounded-right--v2.png" />
							</span> <span class="login100-form-title ">SIGN UP</span>
							<div class="wrap-input100 validate-input alter-validate"
								data-validate="Enter Username">
								<input class="input100" type="email" name="s-name"
									placeholder="Username"> <span class="focus-input100"
									data-placeholder=""></span> <span class="symbol-input100">
									<i class="fa fa-user icon" aria-hidden="true"></i>
								</span>
							</div>
							<div class="wrap-input100 validate-input"
								data-validate="Enter password">
								<input class="input100" type="password" name="s-pass"
									placeholder="Password"> <span class="focus-input100"
									data-placeholder=""></span> <span class="symbol-input100">
									<i class="fa fa-key icon" aria-hidden="true"></i>
								</span>
							</div>
							<div class="wrap-input100 validate-input"
								data-validate="Enter password">
								<input class="input100" type="password" name="pass"
									placeholder="Re-password"> <span class="focus-input100"
									data-placeholder=""></span> <span class="symbol-input100">
									<i class="fa fa-key icon" aria-hidden="true"></i>
								</span>
							</div>
							<div class="contact100-form-checkbox"></div>
							<div class="container-login100-form-btn">
								<button type="submit" class="d-inline p-2 bg-dark text-white"
									style="background-color: #333333" style="border-color: black">SIGN
									UP</button>

							</div>
							<div class="text-center p-t-90">
								<a class="txt1" href="#">Forgot Password? </a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>