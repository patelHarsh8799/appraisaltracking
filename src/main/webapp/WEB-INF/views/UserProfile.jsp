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

<jsp:include page="AdminCss.jsp"></jsp:include>

</head>

<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Profile</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Users</li>
					<li class="breadcrumb-item active">Profile</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">
				<div class="col-xl-4">

					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">

							<img src="${user1.profilePicPath}" alt="Profile"
								class="rounded-circle" height="100px">
							<h2>${user1.firstName}${user1.lastName}</h2>
							<h3>${user1.role}</h3>
							<div class="social-links mt-2">
								<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
									href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
									href="#" class="instagram"><i class="bi bi-instagram"></i></a>
								<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
					</div>

				</div>

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
										tabindex="-1" role="tab">Edit Profile</button>
								</li>

								<li class="nav-item" role="presentation">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-settings" aria-selected="false"
										tabindex="-1" role="tab">Settings</button>
								</li>

								<li class="nav-item" role="presentation">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-change-password"
										aria-selected="false" tabindex="-1" role="tab">Change
										Password</button>
								</li>

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview" role="tabpanel">

									<h5 class="card-title">Profile Details</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Full Name</div>
										<div class="col-lg-9 col-md-8">${user1.firstName}
											${user1.lastName }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Role</div>
										<div class="col-lg-9 col-md-8">${user1.role}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Contact No.</div>
										<div class="col-lg-9 col-md-8">${user1.contactNo}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Email</div>
										<div class="col-lg-9 col-md-8">${user1.email}</div>
									</div>

								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit"
									role="tabpanel">

									<!-- Profile Edit Form -->
									<form class="row g-3" action="updateemployee" method="post">
										<div class="col-md-6">
											<label for="firstName" class="form-label">First Name</label>
											<input type="text" class="form-control" name="firstName"
												id="firstName" value="${user.firstName}">
										</div>
										<div class="col-md-6">
											<label for="lastName" class="form-label">Last Name</label> <input
												type="text" class="form-control" name="lastName"
												id="lastName" value="${user.lastName }">
										</div>
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
											<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
											<div class="col-sm-10" style="padding-right: 0;">
												<input type="email" class="form-control" name="email"
													value="${user.email }">
											</div>
										</div>
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
											<label class="col-sm-5 col-form-label" for="typePhone">Contact
												number :</label>
											<div class="col-sm-7" style="padding-right: 0;">
												<input type="tel" id="typePhone" class="form-control"
													name="contactNo" value="${user.contactNo }">
											</div>
										</div>

										<fieldset class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
											<legend class="col-form-label col-sm-3 pt-0">Gender
												:</legend>
											<div class="col-sm-9 d-flex align-item-center">
												<div class="form-check me-3">
													<input class="form-check-input" type="radio" name="gender"
														id="male" value="male"
														${user.gender == 'male' ? 'checked' : ''}> <label
														class="form-check-label" for="male"> Male </label>
												</div>
												<div class="form-check me-3">
													<input class="form-check-input" type="radio" name="gender"
														id="gridRadios2" value="female"
														${user.gender == 'female' ? 'checked' : ''}> <label
														class="form-check-label" for="female"> Female </label>
												</div>
												<div class="form-check me-3">
													<input class="form-check-input" type="radio" name="gender"
														id="other" value="other"
														${user.gender == 'other' ? 'checked' : ''}> <label
														class="form-check-label" for="other"> Other </label>
												</div>
											</div>
										</fieldset>
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
											<label for="inputDate" class="col-sm-7 col-form-label">Date
												Of Joining :</label>
											<div class="col-sm-5" style="padding-right: 0;">
												<input type="date" class="form-control" name="dateOfJoining"
													value="${user.dateOfJoining }">
											</div>
										</div>

										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
											<label class="col-sm-4 col-form-label">Department : </label>
											<div class="col-sm-8" style="padding-right: 0;">
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
										<%-- <div class="row mb-3"
									style="margin-top: 1rem; margin-bottom: 0 !important; padding-right: 0;">
									<label class="col-sm-4 col-form-label">Position : </label>
									<div class="col-sm-8" style="padding-right: 0;">
										<select class="form-select" name="position"
											aria-label="Default select example">
											<option>Select</option>
											<c:forEach items="${allPositions}" var="p">
												<option value="${p.positionName}">${p.positionName}</option>
											</c:forEach>
										</select>
									</div>
								</div> --%>
										<select class="form-select"
											aria-label="Default select example" name="role">
											<option selected="">Select Role</option>
											<option value="Employee"
												${user.role == 'Employee' ? 'selected' : ''}>Employee</option>
											<option value="HR" ${user.role == 'HR' ? 'selected' : ''}>HR</option>
											<option value="Project Manager"
												${user.role == 'Project Manager' ? 'selected' : ''}>Project
												Manager</option>
										</select>
										<div class="text-center">
											<input type="hidden" name="userID" value="${user.userID}">
										</div>
										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>
									<!-- End Profile Edit Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-settings"
									role="tabpanel">

									<!-- Settings Form -->
									<form>

										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Email
												Notifications</label>
											<div class="col-md-8 col-lg-9">
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="changesMade" checked=""> <label
														class="form-check-label" for="changesMade">
														Changes made to your account </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="newProducts" checked=""> <label
														class="form-check-label" for="newProducts">
														Information on new products and services </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="proOffers"> <label class="form-check-label"
														for="proOffers"> Marketing and promo offers </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="securityNotify" checked="" disabled=""> <label
														class="form-check-label" for="securityNotify">
														Security alerts </label>
												</div>
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>
									<!-- End settings Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-change-password"
									role="tabpanel">
									<!-- Change Password Form -->
									<form>

										<div class="row mb-3">
											<label for="currentPassword"
												class="col-md-4 col-lg-3 col-form-label">Current
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="password" type="password" class="form-control"
													id="currentPassword">
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
		</section>

	</main>
	<jsp:include page="AdminFooter.jsp"></jsp:include>



	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>

</html>