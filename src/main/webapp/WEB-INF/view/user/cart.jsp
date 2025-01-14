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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce1.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce-layout.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/woocommerce-smallscreen.css">
<!-- END: CSS -->
<script type="text/javascript">
	function minusQty(index) {

		var qty = document.getElementById("qty"+index);
		alert("in minus"+qty.innerHTML);

		qty.value = qty.value - 1;

		/* qty.value = qty.value; */

	}

	function plusQty(index) {
		alert("in pluse");
		var qty = document.getElementById("qty"+index);

		qty.value = qty.value + 1;
		qty.text= qty.value;
	}
</script>
<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/userResources/images/j1.jpg">
<!-- END: Favicon -->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%-- ${orderList}
	---------------------------<br>
	-----------------------<br>
	${productThumbnailList}<br>
	
	---------------------------<br>
	-----------------------<br>
	${counts} --%>
	<!-- BEGIN: Page Banner Section -->
	<section class="pageBannerSection">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="pageBannerContent text-center">
						<h2>Shopping Cart</h2>
						<div class="pageBannerPath">
							<a href="index.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>Cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END: Page Banner Section -->
	<%@taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<!-- END: Cart Page Section -->
	<section class="cartPageSection woocommerce">

		<c:set var="length" value="${fun:length(orderList)}"></c:set>

		${cartOrderCount}

		<c:if test="${length eq 0 }">
			<div class="container">
				<div class="row">

					<div class="woocommerce">
						<div class=""></div>
						
						<h2 class=" woocommerce-info">Your Cart is Empty!!</h2>
						

					</div>
					
					<div class="col-lg-12 ">
						
					</div>
					<div class="text-center">
						<a href="shopping" class="col-lg-4 ulinaBTN "><span>Continue
								Shopping</span></a>

					</div>

				</div>
			</div>
		</c:if>

		<c:if test="${length ne 0 }">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<table class="shop_table cart_table">
							<thead>
								<tr>
									<th class="product-thumbnail">Item Name</th>
									<th class="product-name">&nbsp;</th>
									<th class="product-price">Price(INR)</th>
									<th class="product-quantity">Quantity</th>
									<th class="product-subtotal">Total</th>
									<th class="product-remove">&nbsp;</th>
								</tr>
							</thead>

							<c:set var="total" value="0"></c:set>

							<tbody>
								<c:forEach items="${orderList}" var="i" varStatus="j">
									<tr>
										<td class="product-thumbnail"><a href="#"><img
												src="<%=request.getContextPath()%>/documents/productfile/${productThumbnailList.get(j.count - 1)}"
												alt="Cart Item" /></a></td>
										<td class="product-name"><a href="#">${i.productVO.productName}
										</a></td>
										<td class="product-price">
											<div class="pi01Price">
												<ins id="price">${i.price}<ins>
											</div>
										</td>
										<td class="product-quantity">
											<div class="quantity clearfix">
												<button type="button" name="btnMinus"
													class="qtyBtn btnMinus" onclick="minusQty(${j.count})">_</button>
												<%-- <input type="number" class="carqty input-text qty text"
													name="quantity" id="qty" value="${i.quantity}"> --%>
												<span class="carqty qty text" id="qty${j.count}">
													${i.quantity}													
												</span>
												<button type="button" name="btnPlus" class="qtyBtn btnPlus"
													onclick="plusQty(${j.count})">+</button>
											</div>
										</td>

										<td class="product-subtotal">
											<div class="pi01Price">
												<ins id="totalPrice">${i.totalPrice}</ins>
												<c:set var="total" value="${total + i.totalPrice}"></c:set>
											</div>
										</td>
										<td class="product-remove"><a
											href="deleteProductFromCart?id=${i.cartId}" class="remove"><span></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr class="actions">
									<td colspan="2" class="text-start"><a href="shopping"
										class="ulinaBTN"><span>Continue Shopping</span></a></td>
									<td colspan="4" class="text-end"><a href="#"
										class="ulinaBTN2">Update Cart</a> <a href="clearCart"
										class="ulinaBTN2">Clear All</a></td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>

				<f:form action="cartCheckout" method="post" modelAttribute="orderVO">
					<div class="row cartAccessRow">
						<div class="col-md-12 col-lg-12" style="margin-bottom: 20px;">
							<h3>Shipping Address</h3>
						</div>
						<div class="col-md-6 col-lg-4">
							<div class="calculatShippingForm">
								<div class="shippingFormElements">
									<label>Address</label>
									<div class="sfeItem">
										<f:textarea path="shippingAddress"
											cssClass="form-control mx-4"
											placeholder="Enter shipping address" />
									</div>
								</div>
								<div class="shippingFormElements">


									<label>State</label>
									<div class="sfeItem">


										<f:select path="state" cssClass="form-control mx-4"
											placeholder="Select your state">
											<c:forEach items="${stateVOList}" var="i">
												<f:option value="${i.stateName}">${i.stateName}</f:option>
											</c:forEach>
										</f:select>
									</div>
								</div>


							</div>
						</div>
						<div class="col-md-6 col-lg-4">
							<div class="cartCoupon">
								<div class="shippingFormElements">
									<label>City</label>
									<div class="sfeItem">
										<f:select path="city" cssClass="form-control mx-4"
											placeholder="Select your City">
											<c:forEach items="${cityVOList}" var="i">
												<f:option value="${i.cityName}">${i.cityName}</f:option>
											</c:forEach>
										</f:select>
									</div>
								</div>

								<div class="shippingFormElements">
									<label>Zip Code</label>
									<div class="sfeItem">
										<f:input path="zipCode" cssClass="form-control mx-4"
											placeholder="Enter your zip code" />
									</div>
								</div>

							</div>
						</div>
						<div class="col-lg-4">
							<div class="col-sm-12 cart_totals">
								<table class="shop_table shop_table_responsive">
									<tr class="cart-subtotal">
										<th>Subtotal</th>
										<td data-title="Subtotal">
										${total}
										</td>
									</tr>
									<tr class="cart-shipping">
										<th>Shipping</th>
										<td data-title="Shipping">
											<div class="pi01Price">
												<ins>50.00</ins>
											</div>
										</td>
									</tr>
									<tr class="order-total">
										<th>Grand Total</th>
										<td data-title="Grand Total">
											<div class="pi01Price">
												<ins>${total + 50}</ins>
											</div>
										</td>
									</tr>
								</table>
								<!-- class="checkout-button ulinaBTN" -->
								<!-- <input type="submit" class="ulinaBTN" value="Proceed to checkout"> -->
								<f:button class="ulinaBTN">
									<span>Proceed to checkout</span>
								</f:button>
							</div>
						</div>
					</div>
				</f:form>
			</div>
		</c:if>
	</section>
	<!-- END: Cart Page Section -->

	<jsp:include page="footer.jsp"></jsp:include>

	<div class="modal fade productQuickView" id="productQuickView"
		tabindex="-1" data-aria-labelledby="exampleModalLabel"
		aria-modal="true" role="dialog">
		<div class="modal-dialog modal-sm modal-dialog-centered">
			<div class="modal-content">
				<button type="button" class="quickViewCloser"
					data-bs-dismiss="modal" aria-label="Close">
					<span></span>
				</button>
				<div class="modal-body">
					<div class="container">
						<div class="productContent">
							<div class="col-lg-10">
								<h3>Place Orders ?</h3>
								<a href="checkout.html" class="checkout-button ulinaBTN"> <span>Proceed
										to checkout</span>
								</a>
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>
	</div>



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