<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home | HR</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<jsp:include page="AdminCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<!-- Main Content -->

	<main id="main" class="main" style="max-hight:700px;">

		<div class="pagetitle">
			<h1>List Of Users</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">User Data</h5>

							<!-- Table with stripped rows -->
							<table class="table table-striped">
								<thead>
									<tr class="text-center">
										<th>First Name</th>
										<th>Last Name</th>
										<th>Contact Number</th>
										<th>Date Of Joining</th>
										<th>Gender</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${userlist}" var="u">
										<tr class="text-center">
											<td>${u.firstName}</td>
											<td>${u.lastName}</td>
											<td>${u.contactNo}</td>
											<td>${u.dateOfJoining}</td>
											<td>${u.gender}</td>
											<td>${u.status}</td>
											<td class="text-center"><a href="viewemployee?userID=${u.userID}"
												class="btn btn-sm btn-view btn-action btn-success">View</a> <a
												href="editemployee?userID=${u.userID}"
												class="btn btn-sm btn-edit btn-action btn-primary">Edit</a> <a
												href="deleteemployee?userID=${u.userID}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- End Table with stripped rows -->
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>
