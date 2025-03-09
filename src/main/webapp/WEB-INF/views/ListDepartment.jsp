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
		<section class="section">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Department Data</h5>
							<table class="table table-striped">
								<thead>
									<tr>
										<th>No.</th>
										<th>Department Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
								<c:set var="counter" value="1"/>
									<c:forEach items="${departmentList}" var="d">
										<tr>
											<td>${counter}</td>
											<td>${d.departmentName}</td>
											<td> <a
												href="deletedepartment?departmentId=${d.departmentId}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
										<c:set var="counter" value="${counter + 1}"/>
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
</body>
</html>
