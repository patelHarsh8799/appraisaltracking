<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Project Manager | Home</title>
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

.dashboard .info-card h6 {
	font-size: xxx-large;
	color: black;
}

.fixed-table {
	width: 100%;
	border-collapse: collapse;
	table-layout: fixed;
}

.fixed-table th, .fixed-table td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
	vertical-align: middle;
	word-wrap: break-word;
}

.fixed-table th {
	background-color: #f2f2f2;
	font-weight: bold;
}

.goal-cell {
	width: 40%;
}

.progress-cell {
	width: 20%;
}

.status-cell {
	width: 20%;
}

.date-cell {
	width: 20%;
}

.progress-bar-container {
	background-color: #eee;
	border-radius: 5px;
	height: 20px;
	position: relative;
}

.progress-bar {
	background-color: #6c757d;
	height: 100%;
	border-radius: 5px;
	text-align: center;
	color: white;
	font-size: 12px;
	padding-right: 5px;
}

.status-pill {
	display: inline-block;
	padding: 4px 10px;
	border-radius: 12px;
	font-weight: bold;
	font-size: 13px;
	color: white;
}
</style>
</head>

<body class="pagetitle">

	<jsp:include page="ProjectManagerHeader.jsp"></jsp:include>
	<jsp:include page="ProjectManagerSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="projectmanagerhome">Home</a></li>
					<li class="breadcrumb-item active">Project Manager Dashboard</li>
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
											<h6>
												Welcome, <span>${user1.firstName} ${user1.lastName}</span>
											</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card">
										<div class="card-body">
											<h5 class="card-title">Team Overview</h5>
											<p>Total Team Members: 8</p>
											<p>Pending Appraisals: 3</p>
											<p>Average Team Rating: 4.1</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card sales-card">
										<div class="card-body">
											<h5 class="card-title">Assigned Appraisals</h5>
											<table class="table">
												<thead>
													<tr>
														<th>No</th>
														<th>Appraisal Title</th>
														<th>Assign To</th>
														<th>Start Date</th>
														<th>End Date</th>
														<th>Rating</th>
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
													<c:set var="counter" value="1" />
													<c:forEach items="${assignedAppraisals}" var="a">
														<tr>
															<td>${counter}</td>
															<td>${a.appraisalCycle}</td>
															<td>${employeeNames[a.employeeID]}</td>
															<td>${a.startDate}</td>
															<td>${a.endDate}</td>
															<td>${a.overallRate}</td>
															<td><span
																class="badge 
					<c:choose>
						<c:when test='${a.status == "Completed"}'>bg-success</c:when>
						<c:when test='${a.status == "In Progress"}'>bg-warning</c:when>
						<c:when test='${a.status == "Pending"}'>bg-secondary</c:when>
						<c:when test='${a.status == "Assigned"}'>bg-primary</c:when>
						<c:otherwise>bg-light text-dark</c:otherwise>
					</c:choose>
				">
																	${a.status} </span></td>

														</tr>
														<c:set var="counter" value="${counter + 1}" />
													</c:forEach>
													<c:if test="${empty assignedAppraisals}">
														<tr>
															<td colspan="6">No Appraisals Found.</td>
														</tr>
													</c:if>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card sales-card">
										<div class="card-body">
											<c:forEach var="entry" items="${goalsByEmployee}">
												<h5>
													<strong>Employee Name:</strong> ${employeeNames[entry.key]}
												</h5>
												<table class="table table-bordered table-fixed">
													<thead>
														<tr>
															<th class="goal-cell">Goal</th>
															<th class="progress-cell">Progress</th>
															<th class="status-cell">Status</th>
															<th class="date-cell">Target Date</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="g" items="${entry.value}">
															<tr>
																<td>${g.title}</td>
																<td>
																	<div class="progress-bar-container">
																		<div
																			class="progress-bar 
                                										<c:choose>
                                    										<c:when test='${g.progress == 100}'>bg-success</c:when>
                                    										<c:when test='${g.progress >= 50}'>bg-warning</c:when>
                                    										<c:otherwise>bg-secondary</c:otherwise>
                                										</c:choose>'
										                                style="width: ${g.progress}%">
																			${g.progress}%</div>
																	</div>
																</td>
																<td><span
																	class="badge status-pill
										                            <c:choose>
										                                <c:when test='${g.status == \"Completed\"}'>bg-success</c:when>
										                                <c:when test='${g.status == \"In Progress\"}'>bg-warning</c:when>
										                                <c:otherwise>bg-secondary</c:otherwise>
										                            </c:choose>">
																		${g.status} </span></td>
																<td>${g.targetDate}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="col-xxl-12 col-md-12">
									<div class="card info-card sales-card">
										<div class="card-body">
											<h5 class="card-title">Quick Actions</h5>
											<a href="pmcreateappraisal"
												class="btn btn-outline-primary me-2">Create New
												Appraisal</a> <a href="pmassigngoals"
												class="btn btn-outline-secondary">Assign New Goal</a>
										</div>
									</div>
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

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>