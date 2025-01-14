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
	href="vendorResources/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendorResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="vendorResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="vendorResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="vendorResources/images/j1.jpg" />
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
						<h3 class="page-title">User's Feedbacks</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Manage Feedbacks</li>
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
													<th>Rating</th>
													<th>Description</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>tester</td>
													<td><i class="mdi mdi-star lead"></i> <i
														class="mdi mdi-star lead"></i> <i class="mdi mdi-star lead"></i> <i
														class="mdi mdi-star lead"></i></td>
													<td>For Test</td>


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
	<script src="vendorResources/js/vendor.bundle.base.js"></script>
	<script src="vendorResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="vendorResources/js/off-canvas.js"></script>
	<script src="vendorResources/js/hoverable-collapse.js"></script>
	<script src="vendorResources/js/misc.js"></script>
	<script src="vendorResources/js/settings.js"></script>
	<script src="vendorResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="vendorResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>