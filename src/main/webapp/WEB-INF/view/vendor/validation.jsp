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
						<h3 class="page-title">Form validation</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Forms</a></li>
								<li class="breadcrumb-item active" aria-current="page">Validation</li>
							</ol>
						</nav>
					</div>
					<div class="row grid-margin">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Bootstrap Maxlength</h4>
									<div class="form-group row">
										<div class="col-lg-3">
											<label class="col-form-label">Default usage</label>
										</div>
										<div class="col-lg-8">
											<input class="form-control" maxlength="25"
												name="defaultconfig" id="defaultconfig" type="text"
												placeholder="Type Something..">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-3">
											<label class="col-form-label">Few options</label>
										</div>
										<div class="col-lg-8">
											<input class="form-control" maxlength="20"
												name="defaultconfig-2" id="defaultconfig-2" type="text"
												placeholder="Type Something..">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-3">
											<label class="col-form-label">All the options</label>
										</div>
										<div class="col-lg-8">
											<input class="form-control" maxlength="10"
												name="defaultconfig-3" id="defaultconfig-3" type="text"
												placeholder="Type Something..">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-3">
											<label class="col-form-label">Text Area</label>
										</div>
										<div class="col-lg-8">
											<textarea id="maxlength-textarea" class="form-control"
												maxlength="100" rows="2"
												placeholder="This textarea has a limit of 100 chars."></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Basic form validation</h4>
									<form class="cmxform" id="commentForm" method="get" action="#">
										<fieldset>
											<div class="form-group">
												<label for="cname">Name (required, at least 2
													characters)</label> <input id="cname" class="form-control"
													name="name" minlength="2" type="text" required>
											</div>
											<div class="form-group">
												<label for="cemail">E-Mail (required)</label> <input
													id="cemail" class="form-control" type="email" name="email"
													required>
											</div>
											<div class="form-group">
												<label for="curl">URL (optional)</label> <input id="curl"
													class="form-control" type="url" name="url">
											</div>
											<div class="form-group">
												<label for="ccomment">Your comment (required)</label>
												<textarea id="ccomment" class="form-control" name="comment"
													required></textarea>
											</div>
											<input class="btn btn-primary" type="submit" value="Submit">
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Complete form validation</h4>
									<form class="cmxform" id="signupForm" method="get" action="#">
										<fieldset>
											<div class="form-group">
												<label for="firstname">Firstname</label> <input
													id="firstname" class="form-control" name="firstname"
													type="text">
											</div>
											<div class="form-group">
												<label for="lastname">Lastname</label> <input id="lastname"
													class="form-control" name="lastname" type="text">
											</div>
											<div class="form-group">
												<label for="username">Username</label> <input id="username"
													class="form-control" name="username" type="text">
											</div>
											<div class="form-group">
												<label for="password">Password</label> <input id="password"
													class="form-control" name="password" type="password">
											</div>
											<div class="form-group">
												<label for="confirm_password">Confirm password</label> <input
													id="confirm_password" class="form-control"
													name="confirm_password" type="password">
											</div>
											<div class="form-group">
												<label for="email">Email</label> <input id="email"
													class="form-control" name="email" type="email">
											</div>
											<input class="btn btn-primary" type="submit" value="Submit">
										</fieldset>
									</form>
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
	<script src="vendorResources/js/form-validation.js"></script>
	<script src="vendorResources/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
