<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Goals</title>

<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
<jsp:include page="../AdminCss.jsp"></jsp:include>

<style>
.badge-label {
  display: inline-block;
  padding: 4px 10px;
  border-radius: 12px;
  font-weight: 500;
  font-size: 13px;
  background-color: #f8f9fa;
  color: #333;
  border: 1px solid #ccc;
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
		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">
				<div class="col-lg-12">
					<div class="row">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">All Appraisal List</h5>
								<table id="appraisalTable" class="table table-bordered">
									<thead>
										<tr>
											<th>No</th>
											<th>Appraisal Cycle</th>
											<th>Assign To</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Overall Rate</th>
											<th>Status</th>
											<th>Assign By</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="counter" value="1" />
										<c:forEach items="${allAppraisals}" var="a">
											<tr>
												<td>${counter}</td>
												<td>${a.appraisalCycle}</td>
												<td><span class="badge-label">👤 ${employeeNames[a.employeeID]}</span></td>
												<td>${a.startDate}</td>
												<td>${a.endDate}</td>
												<td>${a.overallRate}</td>
												<td>${a.status}</td>
												<td><span class="badge-label">🧑‍💼 ${managerNames[a.userID]}</span></td>
											</tr>
											<c:set var="counter" value="${counter + 1}" />
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Reports <span>/Today</span></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center active">
		<i class="bi bi-arrow-up-short"></i>
	</a>
	<jsp:include page="../AdminFooter.jsp"></jsp:include>
	<jsp:include page="../AdminJs.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#appraisalTable').DataTable();
		});
	</script>
</body>
</html>