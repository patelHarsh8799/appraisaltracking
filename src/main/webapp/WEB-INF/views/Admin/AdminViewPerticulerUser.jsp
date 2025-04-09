<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>User Details</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<!-- <link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

Google Fonts
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet"> -->

<!-- Vendor CSS Files -->
<!-- <link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet"> -->

<!-- Template Main CSS File -->
<!-- <link href="assets/css/style.css" rel="stylesheet" -->
>


<jsp:include page="../AdminCss.jsp"></jsp:include>
</head>

<body class="">

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
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
						<div class="col-12">
							<div class="card">


								<div class="card-body">
									<h5 class="card-title">
										List of Employees <span>/View</span>
									</h5>

									<div class="col-xl-8">

										<div class="card">
											<div class="card-body pt-3">
												<!-- Bordered Tabs -->
												<ul class="nav nav-tabs nav-tabs-bordered" role="tablist">

													<li class="nav-item" role="presentation">
														<button class="nav-link active" data-bs-toggle="tab"
															data-bs-target="#profile-overview" aria-selected="true"
															role="tab">Overview</button>
													</li>

													<li class="nav-item" role="presentation">
														<button class="nav-link" data-bs-toggle="tab"
															data-bs-target="#profile-edit" aria-selected="false"
															tabindex="-1" role="tab">Edit</button>
													</li>

													<li class="nav-item" role="presentation">
														<button class="nav-link" data-bs-toggle="tab"
															data-bs-target="#profile-settings" aria-selected="false"
															tabindex="-1" role="tab">Delete</button>
													</li>
												</ul>
												<div class="tab-content pt-2">

													<div class="tab-pane fade show active profile-overview"
														id="profile-overview" role="tabpanel">

														<h5 class="card-title">Employee Details</h5>

														<div class="row">
															<div class="col-lg-3 col-md-4 label ">First Name</div>
															<div class="col-lg-9 col-md-8">${user.firstName}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Last Name</div>
															<div class="col-lg-9 col-md-8">${user.lastName}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Email</div>
															<div class="col-lg-9 col-md-8">${user.email}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Gender</div>
															<div class="col-lg-9 col-md-8">${user.gender}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Role</div>
															<div class="col-lg-9 col-md-8">${user.role}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Contact Number</div>
															<div class="col-lg-9 col-md-8">${user.contactNo}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Account
																Created On</div>
															<div class="col-lg-9 col-md-8">${user.createdAt}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Date of
																Joining</div>
															<div class="col-lg-9 col-md-8">${user.dateOfJoining}</div>
														</div>
														<a href="adminviewuser"
															class="btn btn-sm btn-edit btn-action btn-primary">Back</a>
													</div>

													<div class="tab-pane fade profile-edit pt-3"
														id="profile-edit" role="tabpanel">

														<!-- Profile Edit Form -->
														<form action="updateemployee" method="post">
															<div class="row mb-3">
																<label for="profileImage"
																	class="col-md-4 col-lg-3 col-form-label">Profile
																	Image</label>
																<div class="col-md-8 col-lg-9">
																	<img src="${user1.profilePicPath}" alt="Profile">
																	<div class="pt-2">
																		<input type="file" name="profileImage"
																			class="form-control">
																	</div>
																	<!-- <div class="pt-2">
																		<a href="#" class="btn btn-primary btn-sm"
																			title="Upload new profile image"><i
																			class="bi bi-upload"></i></a> <a href="#"
																			class="btn btn-danger btn-sm"
																			title="Remove my profile image"><i
																			class="bi bi-trash"></i></a>
																	</div> -->
																</div>
															</div>

															<div class="row mb-3">
																<label for="fullName"
																	class="col-md-4 col-lg-3 col-form-label">First
																	Name</label>

																<div class="col-md-8 col-lg-9">
																	<input name="firstName" type="text"
																		class="form-control" id="fullName"
																		value="${user.firstName}">
																</div>
															</div>
															<div class="row mb-3">
																<label for="fullName"
																	class="col-md-4 col-lg-3 col-form-label">Last
																	Name</label>
																<div class="col-md-8 col-lg-9">
																	<input name="lastName" type="text" class="form-control"
																		id="fullName" value="${user.lastName}">
																</div>
															</div>

															<div class="row mb-3">
																<label for="email"
																	class="col-md-4 col-lg-3 col-form-label">Email</label>
																<div class="col-md-8 col-lg-9">
																	<input name="email" type="email" class="form-control"
																		id="email" value="${user.email}">
																</div>
															</div>

															<div class="row mb-3">
																<label for="contactNo"
																	class="col-md-4 col-lg-3 col-form-label">Contact
																	Number</label>
																<div class="col-md-8 col-lg-9">
																	<input name="contactNo" type="tel" class="form-control"
																		id="contactNo" value="${user.contactNo}">
																</div>
															</div>

															<div class="row mb-3">
																<label for="gender"
																	class="col-md-4 col-lg-3 col-form-label">Gender</label>
																<div class="col-md-8 col-lg-9">
																	<input name="gender" type="text" class="form-control"
																		id="gender" value="${user.gender}">
																</div>
															</div>

															<div class="row mb-3"
																style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
																<label for="inputDate" class="col-sm-7 col-form-label">Date
																	Of Joining :</label>
																<div class="col-sm-5">
																	<input type="date" class="form-control"
																		name="dateOfJoining" value="${user.dateOfJoining }">
																</div>
															</div>

															<div class="row mb-3"
																style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
																<label class="col-sm-3 col-form-label">Department
																	: </label>
																<div class="col-sm-9">
																	<select class="form-select" name="departmentId"
																		aria-label="Default select example">
																		<option selected="">Select</option>
																		<c:forEach items="${allDepartment}" var="de">
																			<option value="${de.departmentId}"
																				${user.departmentID == de.departmentId ? 'selected' : ''}>${de.departmentName}</option>
																		</c:forEach>
																	</select>
																</div>
															</div>
															<div class="row mb-3"
																style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
																<label class="col-sm-3 col-form-label">Role : </label>
																<div class="col-sm-9">
																	<select class="form-select"
																		aria-label="Default select example" name="role">
																		<option selected="">Select Role</option>
																		<option value="Employee"
																			${user.role == 'Employee' ? 'selected' : ''}>Employee</option>
																		<option value="HR"
																			${user.role == 'HR' ? 'selected' : ''}>HR</option>
																		<option value="Project Manager"
																			${user.role == 'Project Manager' ? 'selected' : ''}>Project
																			Manager</option>
																	</select>
																</div>
															</div>
															<div class="text-center">
																<input type="hidden" name="userID"
																	value="${user.userID}">
															</div>

															<!-- <div class="row mb-3">
																<label for="Linkedin"
																	class="col-md-4 col-lg-3 col-form-label">Linkedin
																	Profile</label>
																<div class="col-md-8 col-lg-9">
																	<input name="linkedin" type="text" class="form-control"
																		id="Linkedin" value="https://linkedin.com/#">
																</div>
															</div> -->

															<div class="text-center"
																style="margin-top: 20px !important;">
																<button type="submit" class="btn btn-primary">Save
																	Changes</button>
															</div>
														</form>
														<!-- End Profile Edit Form -->

													</div>

													<div class="tab-pane fade pt-3" id="profile-settings"
														role="tabpanel">

														<!-- Delete Form -->

														<form action="deleteemployee" method="GET">
															<div class="text-center">
																<button type="submit" class="btn btn-danger">Delete
																	Employee</button>
															</div>
														</form>
														<!-- End settings Form -->

													</div>

													<div class="tab-pane fade pt-3"
														id="profile-change-password" role="tabpanel">
														<!-- Change Password Form -->
														<form>

															<div class="row mb-3">
																<label for="currentPassword"
																	class="col-md-4 col-lg-3 col-form-label">Current
																	Password</label>
																<div class="col-md-8 col-lg-9">
																	<input name="password" type="password"
																		class="form-control" id="currentPassword">
																</div>
															</div>

															<div class="row mb-3">
																<label for="newPassword"
																	class="col-md-4 col-lg-3 col-form-label">New
																	Password</label>
																<div class="col-md-8 col-lg-9">
																	<input name="newpassword" type="password"
																		class="form-control" id="newPassword">
																</div>
															</div>

															<div class="row mb-3">
																<label for="renewPassword"
																	class="col-md-4 col-lg-3 col-form-label">Re-enter
																	New Password</label>
																<div class="col-md-8 col-lg-9">
																	<input name="renewpassword" type="password"
																		class="form-control" id="renewPassword">
																</div>
															</div>

															<div class="text-center">
																<button type="submit" class="btn btn-primary">Change
																	Password</button>
															</div>
														</form>
														<!-- End Change Password Form -->

													</div>

												</div>
												<!-- End Bordered Tabs -->

											</div>
										</div>

									</div>

								</div>

							</div>
						</div>
						<!-- End Reports -->
					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>


	</main>
	<!-- End #main -->

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<!-- <script src="assets/js/main.js"></script> -->

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>