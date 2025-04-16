<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>HR | Home</title>

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>
<body>

	<jsp:include page="HRHeader.jsp"></jsp:include>

	<jsp:include page="HRSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-xxl-4 col-xl-12">
									<div class="card info-card customers-card">
										<div class="card-body">
											<h5 class="card-title">
												Total Employees<span>| Overall</span>
											</h5>
											<div class="d-flex align-items-center">
												<div
													class="card-icon rounded-circle d-flex align-items-center justify-content-center">
													<i class="bi bi-people"></i>
												</div>
												<div class="ps-3">
													<h6>${totleEmployee}</h6>
													<span class="text-danger small pt-1 fw-bold">12%</span> <span
														class="text-muted small pt-2 ps-1">decrease</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xxl-4 col-xl-12">
									<div class="card info-card customers-card">
										<div class="card-body">
											<h5 class="card-title">
												Running Appraisals<span>| Overall</span>
											</h5>
											<div class="d-flex align-items-center">
												<div
													class="card-icon rounded-circle d-flex align-items-center justify-content-center">
													<i class="bi bi-journal"></i>
												</div>
												<div class="ps-3">
													<h6>${runningAppraisal}</h6>
													<span class="text-danger small pt-1 fw-bold">12%</span> <span
														class="text-muted small pt-2 ps-1">decrease</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xxl-4 col-xl-12">
									<div class="card info-card customers-card">
										<div class="card-body">
											<h5 class="card-title">
												Completed Appraisals<span>| Overall</span>
											</h5>
											<div class="d-flex align-items-center">
												<div
													class="card-icon rounded-circle d-flex align-items-center justify-content-center">
													<i class="bi bi-journal"></i>
												</div>
												<div class="ps-3">
													<h6>${completedAppraisal}</h6>
													<span class="text-danger small pt-1 fw-bold">12%</span> <span
														class="text-muted small pt-2 ps-1">decrease</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>
</body>
</html>