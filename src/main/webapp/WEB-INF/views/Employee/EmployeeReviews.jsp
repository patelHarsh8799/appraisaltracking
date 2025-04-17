<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
<jsp:include page="../AdminCss.jsp"></jsp:include>

<style>
.badge-pill {
	font-size: 12px;
	font-weight: 500;
	padding: 4px 10px;
	border-radius: 20px;
	background-color: #e7f1ff;
	color: #0d6efd;
	display: inline-block;
}

.status-badge {
	padding: 4px 8px;
	border-radius: 10px;
	font-size: 12px;
	font-weight: 600;
	text-transform: capitalize;
}

.status-active {
	background-color: #d1e7dd;
	color: #0f5132;
}

.status-inactive {
	background-color: #f8d7da;
	color: #842029;
}
</style>
</head>
<body>

	<jsp:include page="EmployeeHeader.jsp"></jsp:include>
	<jsp:include page="EmployeeSidebar.jsp"></jsp:include>

	<main id="main" class="main" style="max-hight: 700px;">
		<div class="pagetitle">
			<h1>User Management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<h5 class="card-title">Your Performance Reviews</h5>

						<c:if test="${not empty reviews}">
							<table id="userTable" class="table table-bordered">
								<thead>
									<tr>
										<th>Date</th>
										<th>Reviewer</th>
										<th>Strengths</th>
										<th>Improvement Area</th>
										<th>Rating</th>
										<th>Comments</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${reviews}" var="r">
										<tr>
											<td>${r.reviewDate}</td>
											<td>${reviewerNames[r.reviewerId]}</td>
											<td>${r.strengths}</td>
											<td>${r.improvementArea}</td>
											<td><span class="badge bg-success">${r.finalRating}</span></td>
											<td>${r.comments}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>

						<c:if test="${empty reviews}">
							<p>No performance reviews available yet.</p>
						</c:if>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../AdminFooter.jsp"></jsp:include>
	<jsp:include page="../AdminJs.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#userTable').DataTable();
		});
	</script>
</body>
</html>
