<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add New User</title>
<meta content="" name="description">
<meta content="" name="keywords">

<jsp:include page="../AdminCss.jsp"></jsp:include>


<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>

</head>

<body>

	<jsp:include page="../Admin/AdminHeader.jsp"></jsp:include>
	<jsp:include page="../Admin/AdminSidebars/ListEmployeeSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Add New User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Add User</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Add User Here</h5>

							<!-- Multi Columns Form -->
							<form class="row g-3" action="saveuser" method="post"
								enctype="multipart/form-data">
								<div class="col-md-6">
									<label for="firstName" class="form-label">First Name</label> <input
										type="text" class="form-control" name="firstName"
										id="firstName" required>
									<div class="invalid-feedback">Please enter First Name!</div>
								</div>

								<div class="col-md-6">
									<label for="lastName" class="form-label">Last Name</label> <input
										type="text" class="form-control" name="lastName" id="lastName"
										required>
									<div class="invalid-feedback">Please enter Last Name!</div>
								</div>

								<div class="col-md-12">
									<label for="email" class="form-label">Email</label> <input
										type="email" class="form-control" name="email" id="email"
										required>
									<div class="invalid-feedback">Please enter a valid Email!</div>
								</div>

								<div class="col-md-12">
									<label for="password" class="form-label">Password</label> <input
										type="password" class="form-control" name="password"
										id="password" required>
									<div class="invalid-feedback">Please enter a password!</div>
								</div>

								<div class="col-md-12">
									<label for="contactNo" class="form-label">Contact
										Number</label> <input type="tel" class="form-control" name="contactNo"
										id="contactNo" required>
									<div class="invalid-feedback">Please enter Contact
										Number!</div>
								</div>

								<fieldset class="col-md-12">
									<legend class="form-label">Gender</legend>
									<div class="d-flex align-items-center">
										<div class="form-check me-3">
											<input class="form-check-input" type="radio" name="gender"
												id="male" value="male" checked> <label
												class="form-check-label" for="male">Male</label>
										</div>
										<div class="form-check me-3">
											<input class="form-check-input" type="radio" name="gender"
												id="female" value="female"> <label
												class="form-check-label" for="female">Female</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="gender"
												id="other" value="other"> <label
												class="form-check-label" for="other">Other</label>
										</div>
									</div>
								</fieldset>

								<div class="col-md-12">
									<label for="dateOfJoining" class="form-label">Date Of
										Joining</label> <input type="date" class="form-control"
										name="dateOfJoining" id="dateOfJoining" required>
								</div>

								<div class="col-md-12">
									<label class="form-label">Department</label> <select
										id="department" class="form-select" name="departmentId"
										onChange="getPosition()" required>
										<option selected disabled>Select Department</option>
										<c:forEach items="${allDepartments}" var="d">
											<option value="${d.departmentId}">${d.departmentName}</option>
										</c:forEach>
									</select>
								</div>

								<div class="col-md-12">
									<label class="form-label">Position</label> <select
										class="form-select" name="positionId" id="position" required>
										<option selected disabled>Select Position</option>
									</select>
								</div>

								<div class="col-md-12">
									<label class="form-label">Role</label> <select
										class="form-select" name="role" required>
										<option selected disabled>Select Role</option>
										<option value="Employee">Employee</option>
										<option value="HR">HR</option>
										<option value="Project Manager">Project Manager</option>
									</select>
								</div>

								<div class="col-md-12">
									<label for="profileImage" class="form-label">Profile
										Image</label> <input class="form-control" type="file"
										id="profileImage" name="profileImage">
									<div class="invalid-feedback">Please select a valid file!</div>
								</div>

								<span class="text-danger">${error}</span>

								<div class="text-center mt-3">
									<button type="submit" class="btn btn-primary">Add</button>
									<button type="reset" class="btn btn-secondary">Reset</button>
								</div>
							</form>
							<!-- End Multi Columns Form -->
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../AdminFooter.jsp"></jsp:include>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>
	<jsp:include page="../AdminJs.jsp"></jsp:include>

	<script type="text/javascript">
		function getPosition() {
			console.log("Category Change");
			let departmentID = document.getElementById("department").value;
			console.log(departmentID);

			$
					.get("getallpositionbydepartmentid/" + departmentID,
							function() {

							})
					.done(
							function(data) {
								console.log(data);
								$('#position')
										.empty()
										.append(
												'<option selected="selected" value="-1">Select Position</option>')
								//fill the positions
								for (var i = 0; i < data.length; i++) {
									$('#position').append(
											'<option value="' + data[i].positionID + '">'
													+ data[i].positionName
													+ '</option>');
								}

							}).fail(function() {

					});

		}
	</script>
</body>
</html>
