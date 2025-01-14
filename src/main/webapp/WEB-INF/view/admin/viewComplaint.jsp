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
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/j1.jpg" />
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
						<h3 class="page-title">Complaint Details</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Manage
									Complaint</li>
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
													<th>User Name</th>
													<th>Complaint Date</th>
													<th>Complaint Subject</th>
													<th>Complaint Description</th>
													<th>Attachment</th>
													<th>Status</th>
													<th>Reply</th>
													<th>Reply Date</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>vender@gmail.com</td>
													<td>2012/08/03</td>
													<td>For Test</td>
													<td class="text-justify">India, officially the
														Republic of India, is a country in South Asia. It is the
														seventh-largest country by area, the second-most populous
														country, and the most populous democracy in the world.</td>
													<td><i class="mdi mdi-attachment lead"></i></td>
													<td>
														<div class="badge badge-warning badge-pill">Pendding</div>
													</td>
													<td><a href="addComplaintReply">
															<button class="btn btn-outline-primary btn-fw">
																<i class="mdi mdi-reply mr-2"></i>Reply
															</button>
													</a></td>
													<td></td>
													<td><a href="#"> <i
															class="mdi mdi-delete text-danger lead"></i>
													</a></td>
												</tr>

												<tr>
													<td>vender@gmail.com</td>
													<td>2012/08/03</td>
													<td>For Test</td>
													<td class="text-justify">India, officially the
														Republic of India, is a country in South Asia. It is the
														seventh-largest country by area, the second-most populous
														country, and the most populous democracy in the world.</td>
													<td><i class="mdi mdi-attachment lead"></i></td>
													<td>
														<div class="badge badge-success badge-pill">Replyed</div>
													</td>
													<td class="text-justify">India, officially the
														Republic of India, is a country in South Asia. It is the
														seventh-largest country by area, the second-most populous
														country, and the most populous democracy in the world.
														India, officially the Republic of India, is a country in
														South Asia. It is the seventh-largest country by area, the
														second-most populous country, and the most populous
														democracy in the world.</td>
													<td>2012/08/03</td>
													<td><a href="#"> <i
															class="mdi mdi-delete text-danger lead"></i>
													</a></td>
												</tr>

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
