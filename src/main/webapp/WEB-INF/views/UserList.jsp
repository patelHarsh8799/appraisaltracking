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
<jsp:include page="AdminCss.jsp"></jsp:include>

<style>
</style>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main" style="max-hight: 700px;">

		<div class="pagetitle">
			<h1>Add new Users and User Data</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<section class="section">
			<div class="row">
				<div class="col-lg-8">
					<div class="card">
						<div class="card-adduser">
							<div class="adduser">
								<h5 class="card-title">
									<a href="adduser">Add User</a>
								</h5>
							</div>
						</div>
						<div class="card-adduser">
							<h5 class="card-title">Project Manager</h5>
						</div>
						<div class="card-body">

							<table id="pmTable" class="table table-striped">
								<thead>
									<tr class="text-center">
										<th>First Name</th>
										<th>Last Name</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pmlist}" var="u">
										<tr class="text-center">
											<td>${u.firstName}</td>
											<td>${u.lastName}</td>
											<td>${u.status}</td>
											<td class="text-center"><a
												href="viewperticuleremployee?userID=${u.userID}"
												class="btn btn-sm btn-view btn-action btn-success">View</a>
												<a href="editemployee?userID=${u.userID}"
												class="btn btn-sm btn-edit btn-action btn-primary">Edit</a>
												<a href="deleteemployee?userID=${u.userID}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<%-- <div class="card-adduser">
							<h5 class="card-title">Employee</h5>
						</div>
						<div class="card-body">

							<table id="employeeTable" class="table table-striped">
								<thead>
									<tr class="text-center">
										<th>First Name</th>
										<th>Last Name</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${employeelist}" var="u">
										<tr class="text-center">
											<td>${u.firstName}</td>
											<td>${u.lastName}</td>
											<td>${u.status}</td>
											<td class="text-center"><a
												href="viewperticuleremployee?userID=${u.userID}"
												class="btn btn-sm btn-view btn-action btn-success">View</a>
												<a href="editemployee?userID=${u.userID}"
												class="btn btn-sm btn-edit btn-action btn-primary">Edit</a>
												<a href="deleteemployee?userID=${u.userID}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div> --%>
					</div>
				</div>
			</div>
		</section>
		<section class="section">
			<div class="row">
				<div class="col-lg-8">
					<div class="card">
						<div class="card-adduser">
							<h5 class="card-title">Employee</h5>
						</div>
						<div class="card-body">

							<table id="employeeTable" class="table table-striped">
								<thead>
									<tr class="text-center">
										<th>First Name</th>
										<th>Last Name</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${employeelist}" var="u">
										<tr class="text-center">
											<td>${u.firstName}</td>
											<td>${u.lastName}</td>
											<td>${u.status}</td>
											<td class="text-center"><a
												href="viewperticuleremployee?userID=${u.userID}"
												class="btn btn-sm btn-view btn-action btn-success">View</a>
												<a href="editemployee?userID=${u.userID}"
												class="btn btn-sm btn-edit btn-action btn-primary">Edit</a>
												<a href="deleteemployee?userID=${u.userID}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#pmTable').DataTable();
		});
		$(document).ready(function() {
			$('#employeeTable').DataTable();
		});
	</script>
</body>
</html>
