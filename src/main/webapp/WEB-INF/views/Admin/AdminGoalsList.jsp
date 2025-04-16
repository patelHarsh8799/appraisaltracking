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
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
	
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

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
<body class="">
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
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
						<div class="col-xxl-12 col-md-12">
							<div class="card info-card sales-card">
								<div class="card-body">
									<table id="goalTable" class="table table-bordered table-fixed">
										<thead class="table-light">
											<tr>
												<th>No.</th>
												<th class="goal-cell">Goal</th>
												<th>Assign to.</th>
												<th class="progress-cell">Progress</th>
												<th class="status-cell">Status</th>
												<th class="date-cell">Target Date</th>
												<th>Assign By.</th>
											</tr>
										</thead>
										<tbody>
										<c:set var="counter" value="1" />
											<c:forEach var="g" items="${allGoals}">
												<tr>
													<td>${counter}</td>
													<td>${g.title}</td>
													<td><span class="badge bg-light text-dark border"
														title="Assigned to Employee"> 👤
															${employeeNames[g.employeeId]} </span></td>

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
													<td><span class="badge bg-light text-dark border">
															🧑‍💼 ${managerNames[g.managerId]} </span></td>

												</tr>
												<c:set var="counter" value="${counter + 1}" />
											</c:forEach>
										</tbody>
									</table>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#goalTable').DataTable();
		});
	</script>

</body>

</html>