<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ERC</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/lightgallery.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/vendorResources/images/j1.jpg" />
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->


		<jsp:include page="header.jsp"></jsp:include>


		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->

			<jsp:include page="menu.jsp"></jsp:include>

			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">View Product</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Manage
									Product</li>
							</ol>
						</nav>
					</div>
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>No.</th>
													<th>Product</th>
													<th>Description</th>
													<th>Price(INR)</th>
													<th>Category</th>
													<th>Sub-Category</th>
													<th>Brand</th>
													<!-- <th>Size</th>
													<th>Color</th>
													<th>Quantity</th> -->
													<th>Images</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${productList}" var="i" varStatus="j">
													<tr>
														<td>${j.count }</td>
														<td>${i.productName}</td>
														<td>${i.productDescription}</td>
														<td>${i.productPrice}</td>
														<td>${i.categoryVO.categoryName}</td>
														<td>${i.subCategoryVO.subCategoryName}</td>
														<td>${i.brandVO.brandName}</td>

														<td><i class="mdi mdi-information-variant btn"
															type="button" data-toggle="modal"
															onclick="getProductImages('${i.productId}')"
															data-target="#exampleModal-${i.productId}"
															data-whatever="@mdo"></i></td>
														<td><a href="editProduct?id=${i.productId}"> <i
																class="mdi mdi-pencil lead"></i>
														</a> <a href="deleteProduct?id=${i.productId}"> <i
																class="mdi mdi-delete lead text-danger ml-2"></i>
														</a></td>
													</tr>
													
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>

	<!-- model pop up for the images -->




	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="ModalLabel" aria-hidden="true">

		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="ModalLabel"></h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="row grid-margin">
						<div class="col-lg-12">

							<div class="owl-carousel owl-theme loop" id="productFilesList">
								</div>
						</div>
					</div>

					<div>
						<div>
							<table class="table table-bordered">
								<tr><th><div class="col-3 font-weight-bold">Size</div></th>
								<td><div class="col-9">
									<span id="modalProductSize"></span>
								</div></td></tr>

								<tr><th><div class="col-3 font-weight-bold">Color</div></th>
								<td><div class="col-9">
									<span id="modalProductColor"></span>
								</div></td></tr>

								<tr><th><div class="col-3 font-weight-bold">Quantity</div></th>
								<td><div class="col-9">
									<span id="modalProductQuantity"></span>
								</div></td></tr>
								
								
								<tr><th><div class="col-3 font-weight-bold">Price</div></th>
								<td><div class="col-9">
									<span id="modalProductPrice"></span>
								</div></td></tr>
								<tr><th><div class="col-3 font-weight-bold">Description</div></th>
								<td><div class="col-9">
									<span id="modalProductDescription"></span>
								</div></td></tr>
								</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%-- <table class="table table-bordered">
						<tr>
							<th>Size</th>
							<td>${i.productSize}</td>
						</tr>
						<tr>
							<th>Quantity</th>
							<td>${i.productQuantity}</td>
						</tr>
						<tr>
							<th>Price</th>
							<td>${i.productPrice}</td>
						</tr>
						<tr>
							<th>Description</th>
							<td>${i.productDescription}</td>
						</tr>
						
					</table> --%>




	<!-- container-scroller -->
	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.base.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->

	<script
		src="<%=request.getContextPath()%>/vendorResources/js/lightgallery-all.min.js"></script>
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/vendorResources/js/misc.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/light-gallery.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/data-table.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/dashboard.js"></script>
	<!-- End custom js for this page-->

	<script
		src="<%=request.getContextPath()%>/vendorResources/js/owl-carousel.js"></script>



	<script type="text/javascript">
		function getProductImages(id) {

			var htp = new XMLHttpRequest();

			htp.onreadystatechange = function() {

				if (htp.readyState == 4) {
					var jsn = JSON.parse(htp.responseText);

					if (jsn.length > 0) {

						var product = jsn[0].productVO;

						document.getElementById("ModalLabel").innerHTML = 'Product : '
								+ product.productName;
						document.getElementById("modalProductSize").innerHTML = product.productSize;
						document.getElementById("modalProductColor").innerHTML = product.productColor;
						document.getElementById("modalProductQuantity").innerHTML = product.productQuantity;
						document.getElementById("modalProductPrice").innerHTML = product.productPrice;
						document.getElementById("modalProductDescription").innerHTML = product.productDescription;

						
						
						var imageData = '';

						for (var index = 0; index < jsn.length; index++) {
							var productFileName = jsn[index].productFileName;
							imageData = imageData
							+ '<div class="item"><img src="/documents/productfile/'+productFileName+'" alt="Product Image"  style="height:150px;width:18xxx0px;"/></div>'
						}

						$('#productFilesList,#productPopupList')
								.html(imageData);

					}

					console.log(jsn);

					$('#exampleModal').modal('show', true);
				}

			}

			htp.open("get", "fetchProductImagesById?productId=" + id, true);
			htp.send();

		}
	</script>
</body>

</html>
