<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin Master</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<!-- <link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

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
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard" style="max-height: 500px;">
			<div class="row justify-content-center">
				<div class="col-lg-6">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Assign Goals</h5>

							<!-- General Form Elements -->
							<form action="savegoal" method="post">
								<div class="row mb-6" style="margin-bottom: 20px!important;">
									<label for="inputText" class="col-sm-4 col-form-label">Goal
										Name</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" name="goalName">
									</div>
								</div>
								<div class="row mb-3">
									<label for="inputPassword" class="col-sm-4 col-form-label">Goal
										Description</label>
									<div class="col-sm-8">
										<textarea class="form-control" style="height: 100px"
											name="goalDescription"></textarea>
									</div>
								</div>

								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">Assign To: </label>
											<div class="col-sm-8">
												<select class="form-select" name="assignToUserID"
													aria-label="Default select example">
													<option selected="">Select</option>
													<c:forEach items="${allEmployees}" var="e">
														<option value="${e.userID}">${e.firstName}  ${e.lastName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">To Appraisal: </label>
											<div class="col-sm-8">
												<select class="form-select" name="appraisalID"
													aria-label="Default select example">
													<option selected="">Select</option>
													<c:forEach items="${allAppraisal}" var="a">
														<option value="${a.appraisalId}">${a.appraisalCycle}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label for="inputDate" class="col-sm-4 col-form-label">Start
										Date</label>
									<div class="col-sm-8">
										<input type="date" class="form-control" name="startDate">
									</div>
								</div>

								<div class="row mb-3">
									<label for="inputDate" class="col-sm-4 col-form-label">Due
										Date</label>
									<div class="col-sm-8">
										<input type="date" class="form-control" name="endDate">
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">Assignd By: </label>
											<div class="col-sm-8">
												<select class="form-select" name="userID"
													aria-label="Default select example">
													<option selected="">Select</option>
													<c:forEach items="${allManagers}" var="e">
														<option value="${e.userID}">${e.firstName}  ${e.lastName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Assign
											Goal</button>
								</div>

							</form>
							<!-- End General Form Elements -->

						</div>
					</div>

				</div>
				<!-- Left side columns -->
				
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>


	</main>
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<!-- <script src="assets/js/main.js"></script> -->

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>