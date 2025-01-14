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
<!-- END: CSS -->

<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png"
	href="userResources/images/j1.jpg">
<!-- END: Favicon -->
<style>
	.comment-reply{
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
					<div class="pageBannerContent text-center">
						<h2>Feedback</h2>
						<div class="pageBannerPath">
							<a href="index.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>Feedback</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END: Page Banner Section -->

	<!-- BEGIN: Blog Page Section -->
	<section class="blogPageSection pt-0">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12">
					<div class="postCommetnFormBox clearfix">
						<h3 class="commentHeading">Give Your Feedback</h3>
						<form method="post" action="#" class="commentForm row">
							
							<div class="col-md-6">
							
							
							<fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" ></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" ></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" ></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" ></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" ></label>
    </fieldset></div><br><br>
							
							<div class="col-md-12">
								<textarea name="comContent"
									placeholder="Write your feedback here..."></textarea>
							</div>
							<div class="col-md-12">
								<button type="submit" class="ulinaBTN">
									<span>Post</span>
								</button>
							</div>
						</form>
					</div>

					<div class="postCommetnListBox clearfix">
						<h3 class="commentHeading">User's Feedback</h3>
						<ol class="comment-list">
							<li class="clearfix">
								<div class="singleComment">
									<img src="userResources/images/author/11.jpg"
										alt="Author Image">
									<h3>Mike Anderson</h3>
									<div class="commentTime">
										<span>June 16, 2022</span><span> at 11.55 pm</span>
									</div>
									<div class="commentContent">Good.</div>
									<span class="comment-reply">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="singleComment">
									<img src="userResources/images/author/12.jpg"
										alt="Author Image">
									<h3>Shanta Arefin</h3>
									<div class="commentTime">
										<span>June 16, 2022</span><span> at 11.55 pm</span>
									</div>
									<div class="commentContent">Awesome!</div>
									<span class="comment-reply">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</span>
								</div>
							<li class="clearfix">
								<div class="singleComment">
									<img src="userResources/images/author/13.jpg"
										alt="Author Image">
									<h3>Paul Harrison</h3>
									<div class="commentTime">
										<span>June 16, 2022</span><span> at 11.55 pm</span>
									</div>
									<div class="commentContent">Useful.</div>
									<span class="comment-reply">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</span>
								</div>
							</li>

							<li class="clearfix">
								<div class="singleComment">
									<img src="userResources/images/author/14.jpg"
										alt="Author Image">
									<h3>Sarah Jeferson</h3>
									<div class="commentTime">
										<span>June 16, 2022</span><span> at 11.55 pm</span>
									</div>
									<div class="commentContent">Not satisfying</div>
									<span class="comment-reply">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</span>
								</div>
							</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END: Blog Page Section -->

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
</body>
</html>