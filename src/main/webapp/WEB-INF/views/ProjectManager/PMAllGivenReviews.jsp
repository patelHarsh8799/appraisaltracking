<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Goals</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<!-- <link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

<!-- Google Fonts -->
<!-- <link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet"> -->

<!-- Vendor CSS Files -->
<!-- <link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet"> -->

<!-- Template Main CSS File -->
<!-- <link href="assets/css/style.css" rel="stylesheet"> -->

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>
<body class="">
	<jsp:include page="ProjectManagerHeader.jsp"></jsp:include>
	<jsp:include page="ProjectManagerSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="employeehome">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">
				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">All Goals Assignd By Me</h5>
								<!-- Bordered Table -->
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>No</th>
											<th>Review Date</th>
											<th>Employee Name</th>
											<th>Appraisal</th>
											<th>Strengths</th>
											<th>Improvement Area</th>
											<th>Final Rating</th>
											<th>Comments</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="counter" value="1" />
										<c:forEach items="${givenReviews}" var="r">
											<tr>
												<td>${counter}</td>
												<td>${r.reviewDate}</td>
												<td>${employeeNames[r.employeeId]}</td>
												<td>${appraisals[r.appraisalId]}</td>
												<td>${r.strengths}</td>
												<td>${r.improvementArea}</td>
												<td>${r.finalRating}</td>												
												<td>${r.comments}</td>
												
											</tr>
											<c:set var="counter" value="${counter + 1}" />
										</c:forEach>
										<c:if test="${empty givenReviews}">
													<tr>
														<td colspan="6">No Reviews Found.</td>
													</tr>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Reports <span>/Today</span>
									</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<!-- <script src="assets/js/main.js"></script> -->

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>