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

<jsp:include page="AdminCss.jsp"></jsp:include>

</head>


<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Add New Department</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Add Department</li>
				</ol>
			</nav>
		</div>
		<section class="section">
			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Add Department Here</h5>
							<form class="row g-3" action="savedepartment" method="post">
								<div class="col-md-12">
									<label for="departmentName" class="form-label">Department
										Name :</label> <input type="text" class="form-control"
										name="departmentName" id="departmentName">
								</div>
								<br>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Save</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Add Position Here</h5>
							<form class="row g-3" action="saveposition" method="post">
								<div class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 1rem !important; padding-right: 0;">
									<label class="col-sm-4 col-form-label" for="positionName">Position
										Name: </label><input type="text" class="form-control"
										name="positionName" id="positionName">
									<div class="col-sm-8"
										style="padding-left: 0; margin-top: 2rem !important;">
										<select class="form-select" name="departmentId"
											aria-label="Default select example">
											<option selected="">Select</option>
											<c:forEach items="${allDepartments}" var="d">
												<option value="${d.departmentId}">${d.departmentName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="text-center" style="margin-top: 1rem !important;">
										<button type="submit" class="btn btn-primary">Save</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="section">
			<div class="row">
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

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<jsp:include page="AdminJs.jsp"></jsp:include>

</body>

</html>