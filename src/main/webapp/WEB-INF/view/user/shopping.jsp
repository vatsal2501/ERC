<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	href="c<%=request.getContextPath()%>/userResources/ss/owl.carousel.min.css">
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
<!-- END: CSS -->

<!-- BEGIN: Favicon -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/userResources/images/j1.jpg">
<!-- END: Favicon -->
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>


	<!-- BEGIN: Page Banner Section -->
	<section class="pageBannerSection">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="pageBannerContent text-center">
						<h2>Our Shop</h2>
						<div class="pageBannerPath">
							<a href="index">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END: Page Banner Section -->

	<!-- BEGIN: Shop Page Section -->
	<section class="shopPageSection">
		<div class="container">
			<div class="row shopAccessRow">
				<div class="col-sm-6 col-xl-4">

					<ul class="nav productViewTabnav" id="productViewTab"
						role="tablist">
						<li role="presentation">
							<button id="list-tab" data-bs-toggle="tab"
								data-bs-target="#list-tab-pane" type="button" role="tab"
								data-aria-controls="list-tab-pane" data-aria-selected="false"
								aria-selected="false" tabindex="-1">
								<i class="fa-solid fa-list"></i>
							</button>
						</li>
						<li role="presentation">
							<button class="active" id="grid-tab" data-bs-toggle="tab"
								data-bs-target="#grid-tab-pane" type="button" role="tab"
								data-aria-controls="grid-tab-pane" data-aria-selected="true"
								aria-selected="true">
								<i class="fa-solid fa-table-cells"></i>
							</button>
						</li>
					</ul>
					<!-- <div class="productCount">
						Showing <strong>1 - 16</strong> of <strong>220</strong> items
					</div> -->
				</div>
				<div class="d-none col-lg-4 col-xl-4 d-xl-flex">
					<ul class="filterUL">
						<c:forEach items="${categoryVOList}" var="i" varStatus="j">
							<li onclick="getSubCategoryAndProduct('${i.cid}')">${i.categoryName}</li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-sm-6 col-xl-4">
					<div class="shopAccessBar">

						<select name="productFilter" id="subcategoryDiv"
							class="form-control" onchange="getProduct()">
							<option disabled="disabled">Select Men's Category</option>
							<c:forEach items="${subCategoryVOList}" var="subCat">
								<option value="${subCat.subCategoryId}">${subCat.subCategoryName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div class="row shopProductRow">
				<div class="col-lg-12">
					<div class="tab-content productViewTabContent"
						id="productViewTabContent">
						<div class="tab-pane show active" id="grid-tab-pane"
							role="tabpanel" aria-labelledby="grid-tab" tabindex="0">
							<div class="row" id="productListWithAjax1">

								<c:forEach items="${productVOList}" var="i" varStatus="j">
									<div class="col-sm-6 col-lg-4 col-xl-3">
										<div class="productItem01">
											<div class="pi01Thumb">

												<c:forEach items="${i.productFileList}" var="k" end="1">
													<img
														src="<%=request.getContextPath()%>/documents/productfile/${k.productFileName}"
														alt=" Product" style="height: 400px;" />
												</c:forEach>

												<div class="pi01Actions">
													<a href="productPreview?id=${i.productId}" target="_blank"><i
														class="fa-solid fa-arrows-up-down-left-right"></i></a>
												</div>
												<div class="productLabels clearfix">
													<span class="plDis">-1000 INR</span> <span class="plSale">Sale</span>
												</div>
											</div>
											<div class="pi01Details">
												<h3>
													<a href="shop_details1.html">${i.productName}</a>
												</h3>
												<div class="pi01Price">
													<ins>${i.productPrice} INR</ins>
													<del>${i.productPrice +1000} INR</del>
												</div>
												<div class="pi01Variations">
													<div class="pi01VColor">
														<div class="pi01VCItem">
															<input checked type="radio" name="color_1_1" value="Blue"
																id="color_1_1_1_blue" /> <label for="color_1_1_1_blue"></label>
														</div>
														<div class="pi01VCItem yellows">
															<input type="radio" name="color_1_1" value="Yellow"
																id="color_1_1_2_blue" /> <label for="color_1_1_2_blue"></label>
														</div>
														<div class="pi01VCItem reds">
															<input type="radio" name="color_1_1" value="Red"
																id="color_1_1_3_blue" /> <label for="color_1_1_3_blue"></label>
														</div>
													</div>
													<div class="pi01VSize">
														<div class="pi01VSItem">
															<input type="radio" name="size_1_1" value="Blue"
																id="size1_1_1_1" /> <label for="size1_1_1_1">${i.productSize}</label>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-pane" id="list-tab-pane" role="tabpanel"
							aria-labelledby="list-tab" tabindex="0">
							<div class="row" id="productDetails02">

								<c:forEach items="${productVOList}" var="i" varStatus="j">

									<div class="col-lg-12 col-xl-6">
										<div class="productItem02 clearfix">
											<div class="pi02Thumb">


												<c:forEach items="${i.productFileList}" var="k" end="1">
													<img
														src="<%=request.getContextPath()%>/documents/productfile/${k.productFileName}"
														alt=" Product" style="height: 400px;" />
												</c:forEach>

												<div class="productLabels clearfix">
													<span class="plDis">- 1000 INR</span> <span class="plSale">Sale</span>
												</div>
												<div class="pi01Actions">
													<a href="javascript:void(0);" class="pi01Cart"><i
														class="fa-solid fa-shopping-cart"></i></a> <a
														href="javascript:void(0);" class="pi01QuickView"><i
														class="fa-solid fa-arrows-up-down-left-right"></i></a>
												</div>
											</div>
											<div class="pi02Details">
												<h3>
													<a href="shop_details1.html">${i.productName}</a>
												</h3>
												<div class="pi01Price">
													<ins>${i.productPrice} INR</ins>
													<del>${i.productPrice + 1000} INR</del>
												</div>
												<div class="pi02Desc">${i.productDescription}</div>
												<div class="pi01Variations">
													<div class="pi01VColor">
														<div class="pi01VCItem">
															<input checked type="radio" name="color_2_1" value="Blue"
																id="color_2_1_1_blue" /> <label for="color_2_1_1_blue"></label>
														</div>
														<div class="pi01VCItem yellows">
															<input type="radio" name="color_2_1" value="Yellow"
																id="color_2_1_2_blue" /> <label for="color_2_1_2_blue"></label>
														</div>
														<div class="pi01VCItem reds">
															<input type="radio" name="color_2_1" value="Red"
																id="color_2_1_3_blue" /> <label for="color_2_1_3_blue"></label>
														</div>
													</div>
													<div class="pi01VSize">
														<div class="pi01VSItem">
															<input type="radio" name="size_2_1" value="Blue"
																id="size1_2_1_1" /> <label for="size1_2_1_1">S</label>
														</div>
														<div class="pi01VSItem">
															<input type="radio" name="size_2_1" value="Yellow"
																id="size1_2_1_2" /> <label for="size1_2_1_2">M</label>
														</div>
														<div class="pi01VSItem">
															<input type="radio" name="size_2_1" value="Red"
																id="size1_2_1_3" /> <label for="size1_2_1_3">XL</label>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END: Shop Page Section -->

	<jsp:include page="footer.jsp"></jsp:include>


	<a href="javascript:void(0);" id="backtotop"><i
		class="fa-solid fa-angles-up"></i></a>
	<!-- END: Back To Top -->


	<!-- BEGIN: Product QuickView  -->
	<div class="modal fade productQuickView" id="productQuickView"
		tabindex="-1" data-aria-labelledby="exampleModalLabel"
		aria-modal="true" role="dialog">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<button type="button" class="quickViewCloser"
					data-bs-dismiss="modal" aria-label="Close">
					<span></span>
				</button>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-6">
							<div class="productGalleryWrap">
								<div class="productGallery">

									<div class="pgImage">
										<img
											src="<%=request.getContextPath()%>/userResources/images/product_details/1.jpg"
											alt="Product Image" />
									</div>
									<div class="pgImage">
										<img
											src="<%=request.getContextPath()%>/userResources/images/product_details/2.jpg"
											alt="Product Image" />
									</div>
									<div class="pgImage">
										<img
											src="<%=request.getContextPath()%>/userResources/images/product_details/3.jpg"
											alt="Product Image" />
									</div>
									<div class="pgImage">
										<img
											src="<%=request.getContextPath()%>/userResources/images/product_details/4.jpg"
											alt="Product Image" />
									</div>
									<div class="pgImage">
										<img
											src="<%=request.getContextPath()%>/userResources/images/product_details/5.jpg"
											alt="Product Image" />
									</div>
								</div>
								<div class="productGalleryThumbWrap">
									<div class="productGalleryThumb">
										<div class="pgtImage">
											<img
												src="<%=request.getContextPath()%>/userResources/images/product_details/t1.jpg"
												alt="Product Image" />
										</div>
										<div class="pgtImage">
											<img
												src="<%=request.getContextPath()%>/userResources/images/product_details/t2.jpg"
												alt="Product Image" />
										</div>
										<div class="pgtImage">
											<img
												src="<%=request.getContextPath()%>/userResources/images/product_details/t3.jpg"
												alt="Product Image" />
										</div>
										<div class="pgtImage">
											<img
												src="<%=request.getContextPath()%>/userResources/images/product_details/t4.jpg"
												alt="Product Image" />
										</div>
										<div class="pgtImage">
											<img
												src="<%=request.getContextPath()%>/userResources/images/product_details/t5.jpg"
												alt="Product Image" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">

							<div class="productContent">
								<div class="pcCategory">
									<a id="modalcategory"></a>
								</div>
								<h2>
									<a id="ModalLabel"></a>
								</h2>
								<div class="pi01Price">
									<ins id="modalProductPrice"></ins>
								</div>
								<div id="modalProductDescription" class="pcExcerpt"></div>
								<div class="pcVariations">
									<div class="pcVariation">
										<span>Color</span>
										<div class="pcvContainer">
											<div class="pi01VCItem" id="modalProductColor"></div>
										</div>
									</div>
									<div class="pcVariation pcv2">
										<span>Size</span>
										<div class="pcvContainer">
											<div class="pswItem">
												<input checked="" type="radio" name="ws_1" value="S"
													id="ws_1_s"> <label for="ws_1_s"
													id="modalProductSize">S</label>
											</div>
										</div>
									</div>
								</div>
								<div class="pcBtns">

									<form action="addtocart" method="post">

										<input type="hidden" value="" name="productId" id="productId">
										<button type="submit" class="ulinaBTN">
											<span>Add to Cart</span>
										</button>
									</form>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END: Product QuickView -->

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

	<script type="text/javascript">
	
		var categoryId = ${categoryId};
	
		function getCategory(id){
			categoryId = id;
		}
	
		function getProduct(){
		
			var subCatId = $('#subcategoryDiv').val();
			
			var htp = new XMLHttpRequest();

			htp.onreadystatechange = function() {

				if (htp.readyState == 4) {

					var jsn = JSON.parse(htp.responseText);
					
					if(jsn !== ''){
						generateProductDiv(jsn);
					}
				}
			}
			

			htp.open("get",
					"fetchProductListByCategoryAndSubCategoryId?categoryId=" + categoryId+'&subCategoryId='+subCatId, true);
			htp.send();
			
			
		}
		
		function generateProductDiv(c){
			
		console.log(c);
			
			var iamageData = '';
			var imageData2 = '';
			
			for (var index1 = 0; index1 < c.length; index1++) {
				
				iamageData = iamageData + 	'<div class="col-sm-6 col-lg-4 col-xl-3">';
				iamageData = iamageData + 	'<div class="productItem01">';
				iamageData = iamageData + 	'<div class="pi01Thumb">';
				
				const imageList = c[index1].productFileList;

				for (var fileIndex = 0; fileIndex < 2; fileIndex++) {
					iamageData = iamageData + '<img ';
					iamageData = iamageData + 'src="/documents/productfile/'+imageList[fileIndex].productFileName+'"';
					iamageData = iamageData + 'alt=" Product" style="height: 400px;" />';	
				}


				iamageData = iamageData + 	'<div class="pi01Actions">';
				iamageData = iamageData + 	'	<a href="productPreview?id='+c[index1].productId+'" target="_blank"><i';
				iamageData = iamageData + 	'		class="fa-solid fa-arrows-up-down-left-right"></i></a>';
				iamageData = iamageData + 	'</div>';
				
				iamageData = iamageData + 	'<div class="productLabels clearfix">';
				iamageData = iamageData + 	'		<span class="plDis">-1000 INR</span> <span class="plSale">Sale</span>';
				iamageData = iamageData + 	'	</div>';
				iamageData = iamageData + 	'</div>';
				iamageData = iamageData + 	'<div class="pi01Details">';
				iamageData = iamageData + 	'	<h3>';
				iamageData = iamageData + 	'		<a href="productPreview?id='+c[index1].productId+'" target="_blank">'+c[index1].productName+'</a>';
				iamageData = iamageData + 	'	</h3>';
				iamageData = iamageData + 	'	<div class="pi01Price">';
				iamageData = iamageData + 	'		<ins>'+c[index1].productPrice +' INR</ins>';
				iamageData = iamageData + 	'		<del>'+ ( parseInt(c[index1].productPrice) + 1000) +' INR</del>';
				iamageData = iamageData + 	'	</div>';
				iamageData = iamageData + 	'	<div class="pi01Variations">';
				iamageData = iamageData + 	'		<div class="pi01VColor">';
				iamageData = iamageData + 	'			<div class="pi01VCItem">';
				iamageData = iamageData + 	'				<input checked type="radio" name="color_1_1" value="Blue"';
				iamageData = iamageData + 	'					id="color_1_1_1_blue" /> <label for="color_1_1_1_blue"></label>';
				iamageData = iamageData + 	'			</div>';
				iamageData = iamageData + 	'			<div class="pi01VCItem yellows">';
				iamageData = iamageData + 	'				<input type="radio" name="color_1_1" value="Yellow"';
				iamageData = iamageData + 	'					id="color_1_1_2_blue" /> <label for="color_1_1_2_blue"></label>';
				iamageData = iamageData + 	'			</div>';
				iamageData = iamageData + 	'			<div class="pi01VCItem reds">';
				iamageData = iamageData + 	'				<input type="radio" name="color_1_1" value="Red"';
				iamageData = iamageData + 	'					id="color_1_1_3_blue" /> <label for="color_1_1_3_blue"></label>';
				iamageData = iamageData + 	'			</div>';
				iamageData = iamageData + 	'		</div>';
				iamageData = iamageData + 	'		<div class="pi01VSize">';
				iamageData = iamageData + 	'			<div class="pi01VSItem">';
				iamageData = iamageData + 	'				<input type="radio" name="size_1_1" value="Blue"';
				iamageData = iamageData + 	'					id="size1_1_1_1" /> <label for="size1_1_1_1">${i.productSize}</label>';
				iamageData = iamageData + 	'			</div>';
				iamageData = iamageData + 	'		</div>';
				iamageData = iamageData + 	'	</div>';
				iamageData = iamageData + 	'</div>';
				iamageData = iamageData + '</div>';
				iamageData = iamageData + '</div>';
			}
			
			$('#productListWithAjax1').html(iamageData);
		
			
			for (var index1 = 0; index1 < c.length; index1++) {
				
				imageData2 = imageData2 + '<div class="col-lg-12 col-xl-6">'
				imageData2 = imageData2 + '<div class="productItem02 clearfix">'
				imageData2 = imageData2 + '<div class="pi02Thumb">'

				const imageList = c[index1].productFileList;

				for (var fileIndex = 0; fileIndex < 2; fileIndex++) {
					imageData2 = imageData2 + '<img ';
					imageData2 = imageData2 + 'src="/documents/productfile/'+imageList[fileIndex].productFileName+'"';
					imageData2 = imageData2 + 'alt=" Product" style="height: 400px;" />';	
				}
				
				imageData2 = imageData2 + '<div class="productLabels clearfix">'
				imageData2 = imageData2 + '<span class="plDis">- 1000 INR</span> <span class="plSale">Sale</span>'
				imageData2 = imageData2 + '</div>'
				
				imageData2  = imageData2 + 	'<div class="pi01Actions">';
				imageData2  = imageData2 + 	'	<a href="productPreview?id='+c[index1].productId+'" target="_blank"><i';
				imageData2  = imageData2 + 	'		class="fa-solid fa-arrows-up-down-left-right"></i></a>';
				imageData2  = imageData2 + 	'</div>';
				
				
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi02Details">'
				imageData2 = imageData2 + '<h3>'
				imageData2 = imageData2 + '<a href="productPreview?id='+c[index1].productId+'" target="_blank">'+c[index1].productName+'</a>';
				imageData2 = imageData2 + '</h3>'
				imageData2 = imageData2 + '<div class="pi01Price">'
				imageData2 = imageData2 + 	'		<ins>'+c[index1].productPrice +' INR</ins>';
				imageData2 = imageData2 + 	'		<del>'+ ( parseInt(c[index1].productPrice) + 1000) +' INR</del>';
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi02Desc">'+c[index1].productDescription+'</div>'
				imageData2 = imageData2 + '<div class="pi01Variations">'
				imageData2 = imageData2 + '<div class="pi01VColor">'
				imageData2 = imageData2 + '<div class="pi01VCItem">'
				imageData2 = imageData2 + '<input checked type="radio" name="color_2_1" value="Blue"'
				imageData2 = imageData2 + 'id="color_2_1_1_blue" /> <label for="color_2_1_1_blue"></label>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi01VCItem yellows">'
				imageData2 = imageData2 + '<input type="radio" name="color_2_1" value="Yellow"'
				imageData2 = imageData2 + 'id="color_2_1_2_blue" /> <label for="color_2_1_2_blue"></label>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi01VCItem reds">'
				imageData2 = imageData2 + '<input type="radio" name="color_2_1" value="Red"'
				imageData2 = imageData2 + 'id="color_2_1_3_blue" /> <label for="color_2_1_3_blue"></label>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi01VSize">'
				imageData2 = imageData2 + '<div class="pi01VSItem">'
				imageData2 = imageData2 + '<input type="radio" name="size_2_1" value="Blue"'
				imageData2 = imageData2 + 'id="size1_2_1_1" /> <label for="size1_2_1_1">S</label>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi01VSItem">'
				imageData2 = imageData2 + '<input type="radio" name="size_2_1" value="Yellow"'
				imageData2 = imageData2 + 'id="size1_2_1_2" /> <label for="size1_2_1_2">M</label>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '<div class="pi01VSItem">'
				imageData2 = imageData2 + '<input type="radio" name="size_2_1" value="Red"'
				imageData2 = imageData2 + 'id="size1_2_1_3" /> <label for="size1_2_1_3">XL</label>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '</div>'
				imageData2 = imageData2 + '</div>'
			}
		
			$('#productDetails02').html(imageData2);

		}
		
	
		function getSubCategoryAndProduct(id) {
			
			getCategory(id);
			
			var htp = new XMLHttpRequest();

			htp.onreadystatechange = function() {

				if (htp.readyState == 4) {

					var jsn = JSON.parse(htp.responseText);
					
					if (jsn.length !== '') {

						const s = jsn.subCategoryList;
						const c = jsn.productVOList;
						
						var data = '';
						
						for (var index = 0; index < s.length; index++) {
							data = data
									+ '<option value='+s[index].subCategoryId+'>'
									+ s[index].subCategoryName + '</option>'
						}
						
						$('#subcategoryDiv').html(data);
						
						generateProductDiv(c);
										
				}
				}
			}

			htp.open("get",
					"fetchProductBySubCategoryListAndCategoryId?categoryId=" + id, true);
			htp.send();

		}
	</script>

	<script type="text/javascript">
		function fetchProductDetails(productId) {

			var htp = new XMLHttpRequest();

			htp.onreadystatechange = function() {

				if (htp.readyState == 4) {

					var jsn = JSON.parse(htp.responseText);

					if (jsn.length > 0) {

						var product = jsn[0].productVO;

						document.getElementById("ModalLabel").innerHTML = 'Product : ' + product.productName;
						document.getElementById("modalProductSize").innerHTML = product.productSize;
						document.getElementById("productId").value = product.productId;
						document.getElementById("modalProductColor").innerHTML = product.productColor;
						document.getElementById("modalProductPrice").innerHTML = product.productPrice + ' INR';
						document.getElementById("modalProductDescription").innerHTML = product.productDescription;
						document.getElementById("modalcategory").innerHTML = product.productDescription;

						var imageData = '';

						for (var index = 0; index < jsn.length; index++) {
							var productFileName = jsn[index].productFileName;
							imageData = imageData
									+ '<div class="pgtImage">'
									+ '<img src="/documents/productfile/'+productFileName+'" alt="Product Image"/>'
									+ '</div>'
						}

						$('#productFilesList,#productPopupList').html(imageData);

					}
				}
			}

			htp.open("get", "fetchProductFilesByProductId?productId="
					+ productId, true);
			htp.send();

		}
	</script>

</body>
</html>
