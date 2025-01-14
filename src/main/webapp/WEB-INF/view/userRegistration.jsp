<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
<!-- END: CSS -->

<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png" href="userResources/images/j1.jpg">
<!-- END: Favicon -->
<style>
.comment-reply {
	border: 0px;
}
</style>
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
						style="padding-top: 120px">
						<!-- <div class="pageBannerPath">
							<a href="index.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>Login</span>
						</div> -->

						<div class="postCommetnFormBox clearfix bg-light">
							<h2>User Registration</h2>
							<f:form method="post" action="saveUser"
								modelAttribute="userRegistrationVO" cssClass="commentForm ">

								<div class="col-md-12">
									<f:input path="fullName" id="fullName" placeholder="Full name"
										cssClass="mx-4" />
									<f:input path="loginVO.username" id="emailAddress"
										placeholder="E-mail Address" cssClass="mx-4" />
									<f:input path="mobileNumber" id="mobileNumber"
										placeholder="Mobile Number" cssClass="mx-4" />
									<f:input path="loginVO.password" id="password"
										placeholder="Password" cssClass="mx-4" />

								</div>

								<div class="col-md-12">
									<f:button type="submit" class="ulinaBTN">
										<span>SIGN UP</span>
									</f:button>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Already have an account? <a href="login" class="text-primary">Login</a>
								</div>
								<f:hidden path="userId" />
							</f:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>
	<!-- BEGIN: JS -->
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