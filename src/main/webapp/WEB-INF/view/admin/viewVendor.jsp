<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/images/j1.jpg" />
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
						<h3 class="page-title">Vendor Details</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Manage
									Vendor</li>
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
													<th>Name</th>
													<th>Business</th>
													<th>Business E-Mail</th>
													<th>Mobile No</th>
													<th>Business Address</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${vendorRegistrationList}" var="i" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td>${i.vendorName}</td>
														<td>${i.businessName}</td>
														<td>${i.businessEmail}</td>
														<td>${i.mobileNumber}</td>
														<td>${i.businessAddress}</td>
														<c:choose>
															<c:when test="${i.approve == null}">
																<td><a href="approveVendor?id=${i.vendorId}">Approve</a>|
																	<a href="declineVendor?id=${i.vendorId}">Decline</a></td>
															</c:when>
															<c:otherwise>
																<c:if test="${i.approve==true}">
																	<td><c:out value="Approved"></c:out></td>
																</c:if>
																<c:if test="${i.approve==false}">
																	<td><c:out value="Rejected"></c:out></td>
																</c:if>
																<%-- <td>${i.approve}</td> --%>
																
															</c:otherwise>
														</c:choose>




														<td>
															<%-- <a href="editVendor?id=${i.vendorId}"> <i
																class="mdi mdi-pencil lead"></i>
														</a>  --%> <a href="deleteVendor?id=${i.vendorId}"> <i
																class="mdi mdi-delete lead text-danger ml-2"></i>
														</a>
														</td>

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
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/misc.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="<%=request.getContextPath()%>/adminResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>
</html>
