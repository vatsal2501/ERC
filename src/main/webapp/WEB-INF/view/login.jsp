<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ERC</title>
<meta name="description"
	content="Fashion Ecommerce Responsive HTML Template.">
<meta name="keywords"
	content="HTML, CSS, JavaScript, jQuery, Animation, Bootstrap, Font Awesome, Revolution Slider, Fasion, Ecommerce, Shop, WooCommerce">
<meta name="author" content="uiuxom">

<!-- BEGIN: CSS -->
<link rel="stylesheet" href="userResources/css/bootstrap.css">
<link rel="stylesheet" href="userResources/css/animate.css">
<link rel="stylesheet" href="userResources/css/fontawesome-all.css">
<link rel="stylesheet"
	href="userResources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="userResources/css/owl.carousel.min.css">
<link rel="stylesheet" href="userResources/css/lightcase.css">
<link rel="stylesheet" href="userResources/css/slick.css">
<link rel="stylesheet" href="userResources/css/nice-select.css">
<link rel="stylesheet" href="userResources/css/settings.css">
<link rel="stylesheet" href="userResources/css/ulina-icons.css">
<link rel="stylesheet" href="userResources/css/ignore_for_wp.css">
<link rel="stylesheet" href="userResources/css/preset.css">
<link rel="stylesheet" href="userResources/css/theme.css">
<link rel="stylesheet" href="userResources/css/responsive.css">
<link rel="stylesheet" type="text/css" href="userResources/css/star.css">
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<!-- END: CSS -->

<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png" href="userResources/images/j1.jpg">
<!-- END: Favicon -->
<style>
.comment-reply {
	border: 0px;
}
</style>
<!-- <script type="text/javascript">
		$(document).ready(function () {
	
		    /*jQuery Validation for add Login Page*/
		    $("#loginForm").validate({
		        rules:{
		        	username:{
		                required: true,
		            },
		            password:{
		                required: true;
		            }
		        },
		    })
		});
	</script> -->
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>

	<!-- BEGIN: Page Banner Section -->
	<section class="pageBannerSection">
		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="pageBannerContent text-center"
						style="padding: 100px 0 100px">

						<div class="postCommetnFormBox clearfix bg-light">
							<h2>Login</h2>
							<form method="post" action="j_spring_security_check"
								class="commentForm row" id="loginForm">

								<div class="col-md-12">
									<input type="text" name="username" id="username"
										placeholder="Username" class="mx-4"> <input
										type="text" name="password" id="password"
										placeholder="Password" class="mx-4 mb-0">
								</div>
								
								<!-- <div class="d-flex justify-content-end">
									<a href="#" class="auth-link text-muted">Forgot password?</a>
								</div> -->

								<div class="col-md-12 mt-4">
									<button type="submit" class="ulinaBTN">
										<span>Login</span>
									</button>
								</div>

								<div class="mt-4 font-weight-light">
									Don't have an account? <a href="vendorRegistration"
										class="text-primary">Vendor</a> | <a href="userRegistration"
										class="text-primary">User</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END: Page Banner Section -->

	<!-- BEGIN: Blog Page Section -->
	<!-- <section class="blogPageSection pt-0">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12">
					<div class="postCommetnFormBox clearfix">
						<h3 class="commentHeading">Login</h3>
						<form method="post" action="#" class="commentForm row">
							<div class="col-md-12">
								<input type="text" name="username" id="username"
									placeholder="Username..."> <input type="text"
									name="password" id="password" placeholder="Password...">
							</div>
							<div class="col-md-12">
								<button type="submit" class="ulinaBTN">
									<span>Login</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- END: Blog Page Section -->
	<!-- <script type="text/javascript">
		$(document).ready(function () {
	
		    /*jQuery Validation for add Login Page*/
		    $("#loginForm").validate({
		        rules:{
		        	username:{
		                required: true,
		            },
		            password:{
		                required: true;
		            }
		        },
		    })
		});
	</script> -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- BEGIN: JS -->
	<script src="userResources/js/jquery.validate.min.js"></script>
	<script src="userResources/js/jquery.js"></script>
	<script src="userResources/js/jquery-ui.js"></script>
	<script src="userResources/js/bootstrap.min.js"></script>
	<script src="userResources/js/shuffle.min.js"></script>
	<script src="userResources/js/owl.carousel.min.js"></script>
	<script src="userResources/js/owl.carousel.filter.js"></script>
	<script src="userResources/js/jquery.appear.js"></script>
	<script src="userResources/js/lightcase.js"></script>
	<script src="userResources/js/jquery.nice-select.js"></script>
	<script src="userResources/js/slick.js"></script>
	<script src="userResources/js/jquery.plugin.min.js"></script>
	<script src="userResources/js/jquery.countdown.min.js"></script>
	<script src="userResources/js/circle-progress.js"></script>

	<script src="userResources/js/gmaps.js"></script>
	<script
		src="https://maps.google.com/maps/api/js?key=AIzaSyCA_EDGVQleQtHIp2fZ-V56QFRbRL8cXT8"></script>

	<script src="userResources/js/jquery.themepunch.tools.min.js"></script>
	<script src="userResources/js/jquery.themepunch.revolution.min.js"></script>

	<script src="userResources/js/revolution.extension.actions.min.js"></script>
	<script src="userResources/js/revolution.extension.carousel.min.js"></script>
	<script src="userResources/js/revolution.extension.kenburn.min.js"></script>
	<script
		src="userResources/js/revolution.extension.layeranimation.min.js"></script>
	<script src="userResources/js/revolution.extension.migration.min.js"></script>
	<script src="userResources/js/revolution.extension.navigation.min.js"></script>
	<script src="userResources/js/revolution.extension.parallax.min.js"></script>
	<script src="userResources/js/revolution.extension.slideanims.min.js"></script>
	<script src="userResources/js/revolution.extension.video.min.js"></script>

	<script src="userResources/js/theme.js"></script>
	<!-- END: JS -->
</body>
</html>
</body>
</html>