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
						<h3 class="page-title">View Complaint</h3>
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
													<th>No.</th>
													<th>Subject</th>

													<th>Complaint Date</th>
													<th>Status</th>
													<th>Reply Date</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${complaintVOList}" var="i" varStatus="j">
													<tr>
														<td>${j.count }</td>
														<td>${i.complaintSubject}</td>

														<td>${i.complaintDate}</td>
														<td><c:if test="${i.complaintReply == null}">
																${i.complaintStatus}
															</c:if> <c:if test="${i.complaintReply != null}">
																${i.complaintReply}
															</c:if>
														</td>
														<td>${i.replyDate}</td>
														<td>
															<div class="modal fade"
																id="exampleModal-${i.complaintId}" tabindex="-1"
																size="lg" role="dialog" aria-labelledby="ModalLabel"
																aria-hidden="true">
																<div class="modal-dialog" role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="ModalLabel">Complaint
																				Details</h5>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>

																		<div class="modal-body">
																			<table class="table table-bordered">
																				<tr>
																					<th>Subject</th>
																					<td>${i.complaintSubject}</td>
																				</tr>
																				<tr>
																					<th>Description</th>
																					<td>${i.complaintDescription}</td>
																				</tr>
																				<tr>
																					<th>Complaint Date</th>
																					<td>${i.complaintDate}</td>
																				</tr>
																					<th>Reply</th>
																					<td>
																						<c:if test="${i.complaintReply == null}">
																							${i.complaintStatus} !!
																						</c:if> <c:if test="${i.complaintReply != null}">
																							${i.replyDate}
																						</c:if>
																					</td>
																				<tr>
																					<th>Reply Date</th>
																					<td>
																						<c:if test="${i.replyDate == null}">
																							Pending !!
																						</c:if> <c:if test="${i.replyDate != null}">
																							${i.complaintReply}
																						</c:if>
																					</td>
																				</tr>
																				<tr>
																					<th>Status</th>
																					<td>${i.complaintStatus}</td>
																				</tr>
																			
																			</table>
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-light"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div> <i class="mdi mdi-information-variant btn" type="button"
															data-toggle="modal"
															data-target="#exampleModal-${i.complaintId}"
															data-whatever="@mdo"></i> 
															<a href="deleteComplaint?id=${i.complaintId}"> <i
																class="mdi mdi-delete text-danger lead"></i>
														</a>
														</td>


													</tr>


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
		src="<%=request.getContextPath()%>/vendorResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
