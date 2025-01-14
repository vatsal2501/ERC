<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/fontawesome-all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/lightcase.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/slick.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/nice-select.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/settings.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/ulina-icons.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/ignore_for_wp.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/preset.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/theme.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/responsive.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/star.css">
<!-- END: CSS -->

<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/userResources/images/j1.jpg">
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
				<div class="col-lg-12">
					<div class="pageBannerContent text-center"
						style="padding-top: 120px">
						<!-- <div class="pageBannerPath">
							<a href="index.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>Login</span>
						</div> -->

						<div class="postCommetnFormBox clearfix bg-light">
							<h2>Vendor Registration</h2>
							<f:form method="post" action="saveVendor"
								modelAttribute="vendorRegistrationVO" cssClass="commentForm">

								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<f:input path="vendorName" id="VendorName"
												cssClass="form-control mx-4" placeholder="Vendor name" />
										</div>
									</div>

									<div class="col-6">
										<div class="form-group">
											<f:input path="businessName" id="BusinessName"
												placeholder="Business Name" cssClass="form-control mx-4" />
										</div>
									</div>

									<div class="col-6">
										<div class="form-group">
											<f:input path="loginVO.username" id="E-mailAddress"
												cssClass="form-control mx-4"
												placeholder="E-mail Address as username" />
										</div>
									</div>

									<div class="col-6">
										<div class="form-group">
											<f:input path="businessEmail" cssClass="form-control mx-4"
												id="BusinessE-mail" placeholder="Business E-mail" />
										</div>
									</div>

									<div class="col-6">
										<div class="form-group">
											<f:input path="mobileNumber" id="MobileNumber"
												cssClass="form-control mx-4" placeholder="Mobile Number" />
										</div>
									</div>

									<div class="col-6">
										<div class="form-group">
											<f:input path="loginVO.password" id="Password"
												cssClass="form-control mx-4" placeholder="Password" />
										</div>
									</div>

									<div class="col-12">
										<div class="form-group">
											<f:textarea path="businessAddress" id="BusinessAddress"
												cssClass="form-control mx-4" placeholder="Business Address"></f:textarea>
										</div>
									</div>

									<div class="col-md-12 mt-4">
										<button type="submit" class="ulinaBTN">
											<span>SIGN UP</span>
										</button>
									</div>

									<div class="text-center mt-4 font-weight-light">
										Already have an account? <a href="login" class="text-primary">Login</a>
									</div>
								</div>
								<f:hidden path="vendorId" />
							</f:form>
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

	<jsp:include page="footer.jsp"></jsp:include>
	<!-- BEGIN: JS -->
	<script src="<%=request.getContextPath()%>/userResources/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery-ui.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/shuffle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.filter.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.appear.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/lightcase.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.nice-select.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.plugin.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.countdown.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/circle-progress.js"></script>

	<script src="<%=request.getContextPath()%>/userResources/js/gmaps.js"></script>
	<script
		src="https://maps.google.com/maps/api/js?key=AIzaSyCA_EDGVQleQtHIp2fZ-V56QFRbRL8cXT8"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.revolution.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.actions.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.kenburn.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.layeranimation.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.migration.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.navigation.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.parallax.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.slideanims.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.video.min.js"></script>

	<script src="<%=request.getContextPath()%>/userResources/js/theme.js"></script>
	<!-- END: JS -->
</body>
</html>
</body>
</html>