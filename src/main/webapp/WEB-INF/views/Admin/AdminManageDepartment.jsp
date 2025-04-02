<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add New Department</title>
<meta content="" name="description">
<meta content="" name="keywords">

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>


<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="../Admin/AdminSidebars/ManageDepartmentSidebar.jsp"></jsp:include>

	<main id="main" class="main" style="max-hight: 700px;">

		<div class="pagetitle">
			<h1>Department and Position Management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<section class="section">
			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-adduser">
							<div class="adduser">
								<h5 class="card-title">
									<a href="department">Add Department</a>
								</h5>
							</div>
						</div>
						<div class="card-adduser">
							<h5 class="card-title">Data</h5>
						</div>
						<div class="card-body">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>No.</th>
										<th>Department Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="counter" value="1" />
									<c:forEach items="${allDepartment}" var="d">
										<tr>
											<td>${counter}</td>
											<td>${d.departmentName}</td>
											<td><a
												href="deletedepartment?departmentId=${d.departmentId}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
										<c:set var="counter" value="${counter + 1}" />
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card">
						<div class="card-adduser">
							<div class="adduser">
								<h5 class="card-title">
									<a href="department">Add Position</a>
								</h5>
							</div>
						</div>
						<div class="card-adduser">
							<h5 class="card-title">Data</h5>
						</div>
						<div class="card-body">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>No.</th>
										<th>Position Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="counter" value="1" />
									<c:forEach items="${positionList}" var="p">
										<tr>
											<td>${counter}</td>
											<td>${p.positionName}</td>
											<td><a href="deleteposition?positionId=${p.positionId}"
												class="btn btn-sm btn-delete btn-danger">Delete</a></td>
										</tr>
										<c:set var="counter" value="${counter + 1}" />
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>