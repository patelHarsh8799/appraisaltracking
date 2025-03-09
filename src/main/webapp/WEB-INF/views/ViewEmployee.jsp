<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin Master</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
															<div class="col-lg-9 col-md-8">${employee.firstName}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Last Name</div>
															<div class="col-lg-9 col-md-8">${employee.lastName}
																</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Email</div>
															<div class="col-lg-9 col-md-8">${employee.email}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Gender</div>
															<div class="col-lg-9 col-md-8">${employee.gender}</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Position</div>
															<div class="col-lg-9 col-md-8">${employee.position}
																</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Contact Number</div>
															<div class="col-lg-9 col-md-8">${employee.contactNo}
																</div>
														</div>

														<div class="row">
															<div class="col-lg-3 col-md-4 label">Account Created On</div>
															<div class="col-lg-9 col-md-8">${employee.createdAt}</div>
														</div>
														
														<div class="row">
															<div class="col-lg-3 col-md-4 label">Date of Joining</div>
															<div class="col-lg-9 col-md-8">${employee.dateOfJoining}</div>
														</div>
														<a href="hrhome" class="btn btn-sm btn-edit btn-action btn-primary">Back</a>
													</div>

													<div class="tab-pane fade profile-edit pt-3"
														id="profile-edit" role="tabpanel">

														<!-- Profile Edit Form -->
														<form>
															<div class="row mb-3">
																<label for="profileImage"
																	class="col-md-4 col-lg-3 col-form-label">Profile
																	Image</label>
																<div class="col-md-8 col-lg-9">
																	<img src="assets/img/profile-img.jpg" alt="Profile">
																	<div class="pt-2">
																		<a href="#" class="btn btn-primary btn-sm"
																			title="Upload new profile image"><i
																			class="bi bi-upload"></i></a> <a href="#"
																			class="btn btn-danger btn-sm"
																			title="Remove my profile image"><i
																			class="bi bi-trash"></i></a>
																	</div>
																</div>
															</div>

															<div class="row mb-3">
																<label for="fullName"
																	class="col-md-4 col-lg-3 col-form-label">Full
																	Name</label>
																<div class="col-md-8 col-lg-9">
																	<input name="fullName" type="text" class="form-control"
																		id="fullName" value="Kevin Anderson">
																</div>
															</div>

															<div class="row mb-3">
																<label for="about"
																	class="col-md-4 col-lg-3 col-form-label">About</label>
																<div class="col-md-8 col-lg-9">
																	<textarea name="about" class="form-control" id="about"
																		style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
																</div>
															</div>

															<div class="row mb-3">
																<label for="company"
																	class="col-md-4 col-lg-3 col-form-label">Company</label>
																<div class="col-md-8 col-lg-9">
																	<input name="company" type="text" class="form-control"
																		id="company" value="Lueilwitz, Wisoky and Leuschke">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Job"
																	class="col-md-4 col-lg-3 col-form-label">Job</label>
																<div class="col-md-8 col-lg-9">
																	<input name="job" type="text" class="form-control"
																		id="Job" value="Web Designer">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Country"
																	class="col-md-4 col-lg-3 col-form-label">Country</label>
																<div class="col-md-8 col-lg-9">
																	<input name="country" type="text" class="form-control"
																		id="Country" value="USA">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Address"
																	class="col-md-4 col-lg-3 col-form-label">Address</label>
																<div class="col-md-8 col-lg-9">
																	<input name="address" type="text" class="form-control"
																		id="Address"
																		value="A108 Adam Street, New York, NY 535022">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Phone"
																	class="col-md-4 col-lg-3 col-form-label">Phone</label>
																<div class="col-md-8 col-lg-9">
																	<input name="phone" type="text" class="form-control"
																		id="Phone" value="(436) 486-3538 x29071">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Email"
																	class="col-md-4 col-lg-3 col-form-label">Email</label>
																<div class="col-md-8 col-lg-9">
																	<input name="email" type="email" class="form-control"
																		id="Email" value="k.anderson@example.com">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Twitter"
																	class="col-md-4 col-lg-3 col-form-label">Twitter
																	Profile</label>
																<div class="col-md-8 col-lg-9">
																	<input name="twitter" type="text" class="form-control"
																		id="Twitter" value="https://twitter.com/#">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Facebook"
																	class="col-md-4 col-lg-3 col-form-label">Facebook
																	Profile</label>
																<div class="col-md-8 col-lg-9">
																	<input name="facebook" type="text" class="form-control"
																		id="Facebook" value="https://facebook.com/#">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Instagram"
																	class="col-md-4 col-lg-3 col-form-label">Instagram
																	Profile</label>
																<div class="col-md-8 col-lg-9">
																	<input name="instagram" type="text"
																		class="form-control" id="Instagram"
																		value="https://instagram.com/#">
																</div>
															</div>

															<div class="row mb-3">
																<label for="Linkedin"
																	class="col-md-4 col-lg-3 col-form-label">Linkedin
																	Profile</label>
																<div class="col-md-8 col-lg-9">
																	<input name="linkedin" type="text" class="form-control"
																		id="Linkedin" value="https://linkedin.com/#">
																</div>
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

														<!-- Delete Form -->
														<form>

															
															<div class="text-center">
																<button type="submit" class="btn btn-danger">Delete Employee</button>
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




	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>

</body>

</html>