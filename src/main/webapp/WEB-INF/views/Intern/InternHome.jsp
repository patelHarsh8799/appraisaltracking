<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Intern | Home</title>
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

<body class="pagetitle">

	<jsp:include page="InternHeader.jsp"></jsp:include>
	<jsp:include page="InternSidebar.jsp"></jsp:include>





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
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-8">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-6 col-md-6">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Assignments <span>| Today</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-journal-check"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>
											<span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-6 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Goals <span>| This Month</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-bullseye"></i>
										</div>
										<div class="ps-3">
											<h6>$3,264</h6>
											<span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<!-- Recent Sales -->
						<div class="col-12">
							<div class="card recent-sales overflow-auto">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Recent Sales <span>| Today</span>
									</h5>

									<div
										class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
										<div class="datatable-top">
											<div class="datatable-dropdown">
												<label> <select class="datatable-selector"
													name="per-page"><option value="5">5</option>
														<option value="10" selected="">10</option>
														<option value="15">15</option>
														<option value="-1">All</option></select> entries per page
												</label>
											</div>
											<div class="datatable-search">
												<input class="datatable-input" placeholder="Search..."
													type="search" name="search" title="Search within table">
											</div>
										</div>
										<div class="datatable-container">
											<table
												class="table table-borderless datatable datatable-table">
												<thead>
													<tr>
														<th scope="col" data-sortable="true"
															style="width: 10.69767441860465%;"><button
																class="datatable-sorter">#</button></th>
														<th scope="col" data-sortable="true"
															style="width: 23.488372093023255%;"><button
																class="datatable-sorter">Customer</button></th>
														<th scope="col" data-sortable="true"
															style="width: 39.30232558139535%;"><button
																class="datatable-sorter">Product</button></th>
														<th scope="col" data-sortable="true"
															style="width: 11.744186046511627%;"><button
																class="datatable-sorter">Price</button></th>
														<th scope="col" data-sortable="true" class="red"
															style="width: 14.767441860465116%;"><button
																class="datatable-sorter">Status</button></th>
													</tr>
												</thead>
												<tbody>
													<tr data-index="0">
														<td scope="row"><a href="#">#2457</a></td>
														<td>Brandon Jacob</td>
														<td><a href="#" class="text-primary">At
																praesentium minu</a></td>
														<td>$64</td>
														<td class="green"><span class="badge bg-success">Approved</span></td>
													</tr>
													<tr data-index="1">
														<td scope="row"><a href="#">#2147</a></td>
														<td>Bridie Kessler</td>
														<td><a href="#" class="text-primary">Blanditiis
																dolor omnis similique</a></td>
														<td>$47</td>
														<td class="green"><span class="badge bg-warning">Pending</span></td>
													</tr>
													<tr data-index="2">
														<td scope="row"><a href="#">#2049</a></td>
														<td>Ashleigh Langosh</td>
														<td><a href="#" class="text-primary">At
																recusandae consectetur</a></td>
														<td>$147</td>
														<td class="green"><span class="badge bg-success">Approved</span></td>
													</tr>
													<tr data-index="3">
														<td scope="row"><a href="#">#2644</a></td>
														<td>Angus Grady</td>
														<td><a href="#" class="text-primar">Ut voluptatem
																id earum et</a></td>
														<td>$67</td>
														<td class="green"><span class="badge bg-danger">Rejected</span></td>
													</tr>
													<tr data-index="4">
														<td scope="row"><a href="#">#2644</a></td>
														<td>Raheem Lehner</td>
														<td><a href="#" class="text-primary">Sunt
																similique distinctio</a></td>
														<td>$165</td>
														<td class="green"><span class="badge bg-success">Approved</span></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="datatable-bottom">
											<div class="datatable-info">Showing 1 to 5 of 5 entries</div>
											<nav class="datatable-pagination">
												<ul class="datatable-pagination-list"></ul>
											</nav>
										</div>
									</div>

								</div>

							</div>
						</div>
						<!-- End Recent Sales -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<div class="col-lg-4">

					<!-- Recent Activity -->
					<div class="card">
						<div class="filter">
							<a class="icon" href="#" data-bs-toggle="dropdown"><i
								class="bi bi-three-dots"></i></a>
							<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
								<li class="dropdown-header text-start">
									<h6>Filter</h6>
								</li>

								<li><a class="dropdown-item" href="#">Today</a></li>
								<li><a class="dropdown-item" href="#">This Month</a></li>
								<li><a class="dropdown-item" href="#">This Year</a></li>
							</ul>
						</div>

						<div class="card-body">
							<h5 class="card-title">
								Feedbacks from Seniors <span>| Today</span>
							</h5>

							<div class="activity">

								<div class="activity-item d-flex">
									<div class="activite-label">32 min</div>
									<i
										class="bi bi-circle-fill activity-badge text-success align-self-start"></i>
									<div class="activity-content">
										Quia quae rerum <a href="#" class="fw-bold text-dark">explicabo
											officiis</a> beatae
									</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">56 min</div>
									<i
										class="bi bi-circle-fill activity-badge text-danger align-self-start"></i>
									<div class="activity-content">Voluptatem blanditiis
										blanditiis eveniet</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">2 hrs</div>
									<i
										class="bi bi-circle-fill activity-badge text-primary align-self-start"></i>
									<div class="activity-content">Voluptates corrupti
										molestias voluptatem</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">1 day</div>
									<i
										class="bi bi-circle-fill activity-badge text-info align-self-start"></i>
									<div class="activity-content">
										Tempore autem saepe <a href="#" class="fw-bold text-dark">occaecati
											voluptatem</a> tempore
									</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">2 days</div>
									<i
										class="bi bi-circle-fill activity-badge text-warning align-self-start"></i>
									<div class="activity-content">Est sit eum reiciendis
										exercitationem</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">4 weeks</div>
									<i
										class="bi bi-circle-fill activity-badge text-muted align-self-start"></i>
									<div class="activity-content">Dicta dolorem harum nulla
										eius. Ut quidem quidem sit quas</div>
								</div>
								<!-- End activity item-->

							</div>

						</div>
					</div>
					<!-- End Recent Activity -->

				
					
					<!-- News & Updates Traffic -->
					<div class="card">
						<div class="filter">
							<a class="icon" href="#" data-bs-toggle="dropdown"><i
								class="bi bi-three-dots"></i></a>
							<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
								<li class="dropdown-header text-start">
									<h6>Filter</h6>
								</li>

								<li><a class="dropdown-item" href="#">Today</a></li>
								<li><a class="dropdown-item" href="#">This Month</a></li>
								<li><a class="dropdown-item" href="#">This Year</a></li>
							</ul>
						</div>

						<div class="card-body pb-0">
							<h5 class="card-title">
								News &amp; Updates <span>| Today</span>
							</h5>

							<div class="news">
								<div class="post-item clearfix">
									<img src="assets/img/news-1.jpg" alt="">
									<h4>
										<a href="#">Nihil blanditiis at in nihil autem</a>
									</h4>
									<p>Sit recusandae non aspernatur laboriosam. Quia enim
										eligendi sed ut harum...</p>
								</div>

								<div class="post-item clearfix">
									<img src="assets/img/news-2.jpg" alt="">
									<h4>
										<a href="#">Quidem autem et impedit</a>
									</h4>
									<p>Illo nemo neque maiores vitae officiis cum eum turos
										elan dries werona nande...</p>
								</div>

								<div class="post-item clearfix">
									<img src="assets/img/news-3.jpg" alt="">
									<h4>
										<a href="#">Id quia et et ut maxime similique occaecati ut</a>
									</h4>
									<p>Fugiat voluptas vero eaque accusantium eos. Consequuntur
										sed ipsam et totam...</p>
								</div>

								<div class="post-item clearfix">
									<img src="assets/img/news-4.jpg" alt="">
									<h4>
										<a href="#">Laborum corporis quo dara net para</a>
									</h4>
									<p>Qui enim quia optio. Eligendi aut asperiores enim
										repellendusvel rerum cuder...</p>
								</div>

								<div class="post-item clearfix">
									<img src="assets/img/news-5.jpg" alt="">
									<h4>
										<a href="#">Et dolores corrupti quae illo quod dolor</a>
									</h4>
									<p>Odit ut eveniet modi reiciendis. Atque cupiditate libero
										beatae dignissimos eius...</p>
								</div>

							</div>
							<!-- End sidebar recent posts-->

						</div>
					</div>
					<!-- End News & Updates -->

				</div>
				<!-- End Right side columns -->

			</div>
		</section>

	</main>



	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

	<jsp:include page="InternFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>