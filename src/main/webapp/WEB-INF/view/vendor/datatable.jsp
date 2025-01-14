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
<link rel="stylesheet" href="<%=request.getContextPath()%>/vendorResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/vendorResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/vendorResources/images/j1.jpg" />
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
						<h3 class="page-title">Data table</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Tables</a></li>
								<li class="breadcrumb-item active" aria-current="page">Data
									table</li>
							</ol>
						</nav>
					</div>
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Data table</h4>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>Order #</th>
													<th>Purchased On</th>
													<th>Customer</th>
													<th>Ship to</th>
													<th>Base Price</th>
													<th>Purchased Price</th>
													<th>Status</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>2012/08/03</td>
													<td>Edinburgh</td>
													<td>New York</td>
													<td>$1500</td>
													<td>$3200</td>
													<td><label class="badge badge-info">On hold</label></td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td>2015/04/01</td>
													<td>Doe</td>
													<td>Brazil</td>
													<td>$4500</td>
													<td>$7500</td>
													<td><label class="badge badge-danger">Pending</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>2010/11/21</td>
													<td>Sam</td>
													<td>Tokyo</td>
													<td>$2100</td>
													<td>$6300</td>
													<td><label class="badge badge-success">Closed</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>2016/01/12</td>
													<td>Sam</td>
													<td>Tokyo</td>
													<td>$2100</td>
													<td>$6300</td>
													<td><label class="badge badge-success">Closed</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>2017/12/28</td>
													<td>Sam</td>
													<td>Tokyo</td>
													<td>$2100</td>
													<td>$6300</td>
													<td><label class="badge badge-success">Closed</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>6</td>
													<td>2000/10/30</td>
													<td>Sam</td>
													<td>Tokyo</td>
													<td>$2100</td>
													<td>$6300</td>
													<td><label class="badge badge-info">On-hold</label></td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>7</td>
													<td>2011/03/11</td>
													<td>Cris</td>
													<td>Tokyo</td>
													<td>$2100</td>
													<td>$6300</td>
													<td><label class="badge badge-success">Closed</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>8</td>
													<td>2015/06/25</td>
													<td>Tim</td>
													<td>Italy</td>
													<td>$6300</td>
													<td>$2100</td>
													<td><label class="badge badge-info">On-hold</label></td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>9</td>
													<td>2016/11/12</td>
													<td>John</td>
													<td>Tokyo</td>
													<td>$2100</td>
													<td>$6300</td>
													<td><label class="badge badge-success">Closed</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
												</tr>
												<tr>
													<td>10</td>
													<td>2003/12/26</td>
													<td>Tom</td>
													<td>Germany</td>
													<td>$1100</td>
													<td>$2300</td>
													<td><label class="badge badge-danger">Pending</label>
													</td>
													<td>
														<button class="btn btn-outline-primary">View</button>
													</td>
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
	<script src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.base.js"></script>
	<script src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="<%=request.getContextPath()%>/vendorResources/js/off-canvas.js"></script>
	<script src="<%=request.getContextPath()%>/vendorResources/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/vendorResources/js/misc.js"></script>
	<script src="<%=request.getContextPath()%>/vendorResources/js/settings.js"></script>
	<script src="<%=request.getContextPath()%>/vendorResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="<%=request.getContextPath()%>/vendorResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
