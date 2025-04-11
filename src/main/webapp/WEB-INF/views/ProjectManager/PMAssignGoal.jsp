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
							<form action="submit-goal" method="post">
								<div class="mb-3">
									<label class="col-sm-4 col-form-label">Assign To: </label>
									<div class="col-sm-8">
										<select class="form-select" name="employeeId"
											aria-label="Default select example">
											<option selected="">Select Employee</option>
											<c:forEach items="${allEmployees}" var="e">
												<option value="${e.userID}">${e.firstName}
													${e.lastName}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="mb-3">
									<label>Goal Title:</label> <input type="text" name="title"
										class="form-control" required />
								</div>

								<div class="mb-3">
									<label>Target Date:</label> <input type="date"
										name="targetDate" class="form-control" />
								</div>

								<div class="mb-3">
									<label>Status:</label> <select name="status"
										class="form-select">
										<option value="Pending">Pending</option>
										<option value="In Progress">In Progress</option>
										<option value="Completed">Completed</option>
									</select>
								</div>

								<button type="submit" class="btn btn-success">Assign
									Goal</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
		
	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>