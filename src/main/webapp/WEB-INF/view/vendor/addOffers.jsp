<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<h3 class="page-title">Add Offers</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Manage
									Offers</li>
							</ol>
						</nav>
					</div>
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<f:form cssClass="cmxform"  id="commentForm" method="post"
										action="saveOffer" modelAttribute="offerVO">
										<fieldset> 
											<div class="row">
												<div class="form-group col-6">
													<label for="exampleFormControlSelect1">Select
														Category</label>
													<f:select cssClass="form-control form-control-lg"
														path="categoryVO.cid">
														<option selected="selected" disabled="disabled">Select
															Category</option>

														<c:forEach items="${categoryList}" var="i">
															<option value="${i.cid}">${i.categoryName}</option>
														</c:forEach>

													</f:select>
												</div>
												<div class="form-group col-6">
													<label for="exampleFormControlSelect1">Select
														Sub-Category</label>	
													<f:select path="subCategoryVO.subCategoryId"
														cssClass="form-control form-control-lg">
														<option selected="selected" disabled="disabled">Select
															Sub Category</option>
														<c:forEach items="${subCategoryList}" var="i">
															<option value="${i.subCategoryId}">${i.subCategoryName}</option>
														</c:forEach>

													</f:select>
												</div>
											</div>

											<div class="form-group ">
												<label for="exampleFormControlSelect1">Select
													Product </label>
												
												
												<f:select path="productVO.productId"
													cssClass="form-control form-control-lg">
													<option selected="selected" disabled="disabled">Select
														product</option>
													<c:forEach items="${productList}" var="i">
														<option value="${i.productId}">${i.productName}</option>
													</c:forEach>

												</f:select>
											</div>


											<div class="form-group">
												<label for="ccomment">Offers Description</label>
												<f:textarea id="ccomment" 
													placeholder="Enter Product Description"
													cssClass="form-control" 
													path="offersDescription"></f:textarea>
											</div>



											<div class="row">
												<div class="form-group col-6">
													<label for="cname">Start Date</label>
													<f:input type="date" path="startDate" cssClass="form-control" />
												</div>
												


												<div class="form-group col-6">
													<label for="cname">End Date</label>
													<f:input type="date" path="endDate" cssClass="form-control"  />
												</div>
											</div>


											<input type="submit" class="btn btn-primary" value="Add">
											<f:hidden path="offerId"/>
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




<%-- 	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.addons.js"></script>
 --%>
 
 
 
 
 
 
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
		src="<%=request.getContextPath()%>/vendorResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/formpickers.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/form-addons.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/x-editable.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/dropify.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/dropzone.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/jquery-file-upload.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/formpickers.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/form-repeater.js"></script>
</body>

</html>
