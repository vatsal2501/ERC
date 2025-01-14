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
						<h3 class="page-title">
							Dashboard 
						</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
							</ol>
						</nav>
					</div>
					<div class="row">
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-danger border-0 text-white p-3">
								<div class="card-body">
									<div class="d-flex align-items-start">
										<i class="mdi mdi-account mdi-48px"></i>
										<div class="ml-4">
											<h2 class="mb-2">${vendorRegistrationVOList}</h2>
											<h4 class="mb-0">Vendors (Approved + Pending)</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-info border-0 text-white p-3">
								<div class="card-body">
									<div class="d-flex align-items-start">
										<i class="mdi mdi-cards-outline mdi-48px"></i>
										<div class="ml-4">
											<h2 class="mb-2">67,045</h2>
											<h4 class="mb-0">Total Expense</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-success border-0 text-white p-3">
								<div class="card-body">
									<div class="d-flex align-items-start">
										<i class="mdi mdi-chart-line mdi-48px"></i>
										<div class="ml-4">
											<h2 class="mb-2">83,900</h2>
											<h4 class="mb-0">Total Sales</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->

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
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/misc.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="<%=request.getContextPath()%>/adminResources/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
