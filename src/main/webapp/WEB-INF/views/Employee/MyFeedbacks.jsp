<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Your Feedback</title>

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
</head>
<jsp:include page="EmployeeHeader.jsp"></jsp:include>
	<jsp:include page="EmployeeSidebar.jsp"></jsp:include>
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
								<h5 class="card-title">Your Feedbacks</h5>
								<!-- Bordered Table -->
								<table class="table table-bordered">
									<thead>
										<tr>
											<th scope="col">No.</th>
											<th scope="col">Feedback</th>
											<th scope="col">Date of Feedback</th>
											<th scope="col">Type</th>
											<th scope="col">Given By</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="counter" value="1" />
										<c:forEach items="${givenFeedbacks}" var="f">
											<tr>
												<td>${counter}</td>
												<td>${f.feedbackText}</td>
												<td>${f.feedbackDate}</td>
												<td>${f.type}</td>
												<td><c:choose>
														<c:when test="${f.managerId != null}">
                            ${assigndUsers[f.managerId]}
                        </c:when>
														<c:otherwise>
                            Null
                        </c:otherwise>
													</c:choose></td>
											</tr>
											<c:set var="counter" value="${counter + 1}" />
										</c:forEach>
										<c:if test="${empty givenFeedbacks}">
													<tr>
														<td colspan="6">No Feedbacks Found.</td>
													</tr>
										</c:if>
									</tbody>
								</table>
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