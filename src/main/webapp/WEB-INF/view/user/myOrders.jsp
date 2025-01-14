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
<link rel="stylesheet"
	href="<%=request.getContextPath()%><%=request.getContextPath()%>/userResources/css/bootstrap.css">
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
<%-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/themeV6.css"> --%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/responsive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce1.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce-layout.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce-smallscreen.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/star.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/fontawesome.css">
<!-- END: CSS -->

<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/userResources/images/j1.jpg">
<!-- END: Favicon -->
<script>
function addProductId(pId){

	var hiddenField = document.getElementById("hidenField");
														
	
	hiddenField.innerHTML = "<input type='hidden' name='productId' value='"+pId+"'>";
	
}
</script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section class="pageBannerSection">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="pageBannerContent text-center">
						<h2>My Orders</h2>
						<div class="pageBannerPath">
							<a href="index">home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>My
								Orders</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


	<section class="cartPageSection woocommerce">
		<div class="container">
			<div class="accordion" id="accordionExample">
				<c:forEach items="${orderListForUser}" var="i" varStatus="j">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#collapseOne${j.count}" aria-expanded="false"
								aria-controls="collapseOne" style="background-color: #ecf5f4;">${j.count}
								) OrderId: ${i.orderId} | Date: ${i.addToCartVOList[0].date}</button>
						</h2>
						<div id="collapseOne${j.count}"
							class="accordion-collapse collapse " aria-labelledby="headingOne"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<table border="1"
									class="shop_table cart wishlist_table wishlist_view traditional responsive   ">
									<thead style="background-color: #ecf5f4;">
										<th>No</th>
										<th>picture</th>
										<th>Product Name</th>
										<th>Category</th>
										<th>SubCategory</th>
										<th>Quantity</th>
										<th>Price (INR)</th>
										<th>Total (INR)</th>
										<th></th>
									</thead>
									<tbody>
										<c:set var="total" value="0"></c:set>
										<c:forEach items="${i.addToCartVOList}" var="k" varStatus="l">
											<tr>
												<td>${l.count}</td>
												<td><c:set var="files"
														value="${k.productVO.productFileList}"></c:set> <c:forEach
														items="${files}" var="file" end="0">
														<img alt="${k.productVO.productName}" height="100"
															width="100"
															src="<%=request.getContextPath()%>/documents/productfile/${file.productFileName}">
													</c:forEach></td>
												<td>${k.productVO.productName}</td>
												<td>${k.productVO.categoryVO.categoryName}</td>
												<td>${k.productVO.subCategoryVO.subCategoryName}</td>
												<td>${k.quantity}</td>
												<td>${k.price}</td>
												<td><c:set value="${total + k.totalPrice}" var="total"></c:set>

													${k.totalPrice}</td>
												<td><button class="pi01QuickView ulinaBTN"
														id="pi01QuickView"
														onclick="addProductId(${k.productVO.productId})">
														<span>Review</span>
													</button></td>
											</tr>
										</c:forEach>

										<tr style="background-color: #ecf5f4;">
											<td colspan="7" style="text-align: right;"><b>Grand
													Total</b></td>
											<td>${total}/-</td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>



	<!-- model -->
	<div class="modal fade productQuickView" id="productQuickView"
		tabindex="-1" data-aria-labelledby="exampleModalLabel"
		aria-modal="true" role="dialog">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<button type="button" class="quickViewCloser"
					data-bs-dismiss="modal" aria-label="Close">
					<span></span>
				</button>
				<div class="modal-body p-5">
						<div class="row">
							<div class="col-lg-12">
								<div id="review_form_wrapper" class="hasReviews">
									<div id="review_form" class="commentFormArea reviewFrom">
										<div id="respond" class="comment-respond">
											<h3 id="reply-title">Review Product</h3>
											<form action="addReview" method="post" id="commentform"
												class="row" novalidate>
												<div class="comment-form-rating d-flex align-items-center">
													
													
													<fieldset class="rating">
														<input type="radio" id="star5" name="review" value="5" /><label
															class="full" for="star5" title="Awesome - 5 stars"></label>
														<input type="radio" id="star4" name="review" value="4" /><label
															class="full" for="star4" title="Pretty good - 4 stars"></label>
														<input type="radio" id="star3" name="review" value="3" /><label
															class="full" for="star3" title="Meh - 3 stars"></label> <input
															type="radio" id="star2" name="review" value="2" /><label
															class="full" for="star2" title="Kinda bad - 2 stars"></label>
														<input type="radio" id="star1" name="review" value="1" /><label
															class="full" for="star1" title="Sucks big time - 1 star"></label>
													</fieldset>

												</div>
												<div class="col-lg-12 mt-3">
													<textarea placeholder="Write your feedback..." id="comment"
														name="reviewDescription" required></textarea>
												</div>
												<div id="hidenField"></div>
												<div class="col-lg-12 mt-3">
													<button name="submit" type="submit" id="submit"
														class="submit ulinaBTN" value="Submit Now">
														<span>Post</span>
													</button>
												</div>
												<input type='hidden' name='comment_post_ID' value='517'
													id='comment_post_ID' /> <input type='hidden'
													name='comment_parent' id='comment_parent' value='0' />
											</form>
										</div>
									</div>
								</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




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
		src="<%=request.getContextPath()%>/userResources/js/revolution.extemnsion.video.min.js"></script>

	<script src="<%=request.getContextPath()%>/userResources/js/theme.js"></script>

	<script
		src="<%=request.getContextPath()%>/adminResources/js/data-table.js"></script>
	<!-- END: JS -->
</body>
</html>