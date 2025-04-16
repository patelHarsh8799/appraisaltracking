<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Employee Home</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<jsp:include page="../AdminCss.jsp"></jsp:include>

<style>
h6 {
	margin-top: 20px !important;
	margin-bottom: 20px !important;
}

h2 {
	font-size: 20px !important;
}

.info-card {
	display: flex !important;
	flex-direction: row;
	justify-content: space-around;
	padding: 20px;
}
</style>
</head>

<body class="pagetitle">

	<jsp:include page="EmployeeHeader.jsp"></jsp:include>
	<jsp:include page="EmployeeSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Employee Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card">
										<div class="welcome-body">
											<h6>Welcome ${user1.firstName} ${user1.lastName}</h6>
											<h2>Role: ${user1.role}</h2>
											<h2>Join Date: ${user1.dateOfJoining}</h2>
										</div>
										<div class="welcome-body">
											<h5 class="card-title">Your Appraisal</h5>
											<c:if test="${not empty appraisals}">
												<c:set var="nextAppraisal" value="${appraisals[0]}" />
												<p><strong>Running Appraisal: </strong> ${nextAppraisal.appraisalCycle}</p>
												<p><strong>Time for Appraisal:</strong> ${nextAppraisal.startDate} To ${nextAppraisal.endDate}</p>
											</c:if>
											<c:if test="${empty appraisals}">
												<p>No appraisal cycle assigned yet.</p>
											</c:if>
										</div>
									</div>
								</div>
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card sales-card">
										<div class="card-body">
											<h5 class="card-title">Goals Tracking</h5>
											<c:forEach items="${givenGoals}" var="g">
												<div class="row align-items-center mb-3">
													<div class="col-md-4">
														<strong>${g.title}</strong>
													</div>
													<div class="col-md-5">
														<div class="progress">
															<div class="progress-bar 
																<c:choose>
																	<c:when test='${g.status == "Completed"}'>bg-success</c:when>
																	<c:when test='${g.status == "In Progress"}'>bg-warning</c:when>
																	<c:otherwise>bg-secondary</c:otherwise>
																</c:choose>'
																role="progressbar"
																style="width: ${g.progress}%"
																aria-valuenow="${g.progress}"
																aria-valuemin="0"
																aria-valuemax="100">
															</div>
														</div>
													</div>
													<div class="col-md-3 text-end">
														<span class="badge 
															<c:choose>
																<c:when test='${g.status == "Completed"}'>bg-success</c:when>
																<c:when test='${g.status == "In Progress"}'>bg-warning</c:when>
																<c:otherwise>bg-secondary</c:otherwise>
															</c:choose>">
															${g.status}
														</span>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="col-lg-6">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card sales-card">
										<div class="card-body">
											<h6>Self-Assesment</h6>
											<a href="selfassesment">Start Self-Assesment</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</section>
	</main>



	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<!-- 	<script src="assets/js/main.js"></script> -->

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>