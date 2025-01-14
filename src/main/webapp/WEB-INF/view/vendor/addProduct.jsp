<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
						<h3 class="page-title">Add Product</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Manage
									Product</li>
							</ol>
						</nav>
					</div>
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">

								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
								<%@taglib prefix="f"
									uri="http://www.springframework.org/tags/form"%>

								<div class="card-body">

									<f:form class="cmxform" modelAttribute="ProductVO"
										method="post" action="saveProduct"
										enctype="multipart/form-data">
										<fieldset>

											<div class="row">

												<div class="form-group col-6">
													<f:select onchange="getSubCategory()" id="categoryId"
														class="form-control form-control-lg" path="categoryVO.cid">


														<option selected="selected" disabled="disabled">Select
															Category</option>
														<c:forEach items="${categoryList }" var="i">
															<option value="${i.cid}">${i.categoryName}</option>
														</c:forEach>

													</f:select>
												</div>

												<div class="form-group col-6">
													<f:select name="subCategoryId" id="subcategoryDiv"
														class="form-control form-control-lg" path="subCategoryVO.subCategoryId">
														<option selected="selected" disabled="disabled">Select
															Sub Category</option>

													</f:select>
												</div>

												<div class="form-group col-12">
													<f:input id="cname" placeholder="Enter Product Name"
														class="form-control" path="productName" minlength="2"
														type="text" />
												</div>

												<div class="form-group col-12">
													<f:textarea id="ccomment"
														placeholder="Enter Product Description"
														class="form-control" name="comment"
														path="productDescription"></f:textarea>
												</div>

												<div class="form-group col-6">
													<f:select class="form-control form-control-lg"
														path="productSize">

														<option selected="selected" disabled="disabled">Select
															Product Size</option>
														<option>XS</option>
														<option>S</option>
														<option>M</option>
														<option>L</option>
														<option>XL</option>

													</f:select>
												</div>

												<div class="form-group col-6">
													<f:input id="cname" class="form-control" name="name"
														placeholder="Enter Product Colour" type="text"
														path="productColor" />
												</div>

												<div class="form-group col-6">
													<div class="input-group">
														<div class="input-group-prepend">
															<span
																class="input-group-text bg-gradient-primary text-white">
																<i class="mdi mdi-currency-inr"></i>
															</span>
														</div>
														<f:input type="text" class="form-control"
															placeholder="Enter Price" path="productPrice" />
														<div class="input-group-append">
															<span class="input-group-text">.00</span>
														</div>
													</div>
												</div>

												<div class="form-group col-6">
													<div class="input-group">
														<f:input type="text" class="form-control"
															path="productQuantity" placeholder="Enter Quntity" />
														<div class="input-group-append">
															<span class="input-group-text">Piece</span>
														</div>
													</div>
												</div>

												<div class="form-group col-12">
													<input type="file" name="file" multiple="multiple"
														class="file-upload-default">
													<div class="input-group col-xs-12">
														<input type="text" class="form-control file-upload-info"
															placeholder="Upload Image"> <span
															class="input-group-append">
															<button
																class="file-upload-browse btn btn-gradient-primary"
																type="button">Upload</button>
														</span>
													</div>
												</div>

												<div class="form-group col-12">
													<f:select path="brandVO.brandId"
														class="form-control form-control-lg">
														<option selected="selected" disabled="disabled">Select
															Brand</option>
														<c:forEach items="${brandList}" var="i">
															<option value="${i.brandId}">${i.brandName}</option>
														</c:forEach>

													</f:select>
												</div>

											</div>

											<input class="btn btn-primary" type="submit" value="Add">
											<f:hidden path="productId" />
										</fieldset>
									</f:form>
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
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.base.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
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
		src="<%=request.getContextPath()%>/vendorResources/js/file-upload.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->

	<script type="text/javascript">
		function getSubCategory() {

			var id = $('#categoryId').val();

			var htp = new XMLHttpRequest();

			htp.onreadystatechange = function() {

				if (htp.readyState == 4) {

					var jsn = JSON.parse(htp.responseText);

					if (jsn.length > 0) {
						var data = '';
						for (var index = 0; index < jsn.length; index++) {
							data = data
									+ '<option value='+jsn[index].subCategoryId+'>'
									+ jsn[index].subCategoryName + '</option>'
						}
						$('#subcategoryDiv').html(data);
					}
				}
			}

			htp.open("get",
					"fetchSubCategoryListByCategoryId?categoryId=" + id, true);
			htp.send();

		}
	</script>

</body>

</html>
