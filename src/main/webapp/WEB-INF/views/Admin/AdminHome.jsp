<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | Dashboard</title>

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

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

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">

								<!-- Sales Card -->
								<div class="col-xxl-6 col-md-6">
									<div class="card info-card sales-card">

										<div class="card-body">
											<h5 class="card-title">
												Total Users <span>| OverAll</span>
											</h5>

											<div class="d-flex align-items-center">
												<div
													class="card-icon rounded-circle d-flex align-items-center justify-content-center">
													<i class="bi bi-person-circle"></i>
												</div>
												<div class="ps-3">
													<h6>${totalUsers}</h6>
													<!-- <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span> -->
												</div>
											</div>
										</div>

									</div>
								</div>
								<!-- End Sales Card -->

								<!-- Customers Card -->
								<div class="col-xxl-6 col-md-6">

									<div class="card info-card customers-card">

										<div class="card-body">
											<h5 class="card-title">
												Total Employees<span>| Overall</span>
											</h5>

											<div class="d-flex align-items-center">
												<div
													class="card-icon rounded-circle d-flex align-items-center justify-content-center">
													<i class="bi bi-journal"></i>
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
							</div>
						</div>
						<!-- Reports -->
						<div class="col-xxl-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Appraisal Status Overview</h5>
									<canvas id="appraisalChart" width="400" height="200"></canvas>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Appraisal Created Over Time</h5>
									<canvas id="monthlyAppraisalChart" width="400" height="200"></canvas>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">User Role Distribution</h5>
									<canvas id="rolePieChart" width="400" height="300"></canvas>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Feedback Type Distribution</h5>
									<canvas id="feedbackDonutChart" width="400" height="300"></canvas>
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
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<!-- This script for Bar chart -->
	<script>
  const ctx = document.getElementById('appraisalChart');
  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Pending', 'Running', 'Completed'],
      datasets: [{
        label: 'No. of Appraisals',
        data: [${pending}, ${Running}, ${completed}],
        backgroundColor: [
          'rgba(255, 193, 7, 0.8)',   // yellow
          'rgba(13, 110, 253, 0.8)',  // blue
          'rgba(40, 167, 69, 0.8)'    // green
        ],
        borderColor: [
          'rgba(255, 193, 7, 1)',
          'rgba(13, 110, 253, 1)',
          'rgba(40, 167, 69, 1)'
        ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true,
          stepSize: 1
        }
      }
    }
  });
</script>

	<!-- This script for line chart -->
	<script>
  const monthlyChart = document.getElementById('monthlyAppraisalChart');
  new Chart(monthlyChart, {
    type: 'line',
    data: {
      labels: [
    	  <c:forEach var="m" items="${months}" varStatus="loop">
    	    '${m}'<c:if test="${!loop.last}">,</c:if>
    	  </c:forEach>
      ],
      datasets: [{
        label: 'Appraisals per Month',
        data: [
        	<c:forEach var="c" items="${monthlyCounts}" varStatus="loop">
            ${c}<c:if test="${!loop.last}">,</c:if>
          </c:forEach>
        ],
        fill: false,
        borderColor: 'rgba(13, 110, 253, 1)',
        tension: 0.3
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true,
          stepSize: 1
        }
      }
    }
  });
</script>
	<!-- This script for pie chart -->
	<script>
  const rolePieCtx = document.getElementById('rolePieChart');
  new Chart(rolePieCtx, {
    type: 'pie',
    data: {
      labels: [
        <c:forEach var="r" items="${roles}">'${r}',</c:forEach>
      ],
      datasets: [{
        label: 'Users per Role',
        data: [
          <c:forEach var="n" items="${roleNumbers}">${n},</c:forEach>
        ],
        backgroundColor: [
          '#0d6efd',  // Admin - Blue
          '#ffc107',  // PM - Yellow
          '#198754',  // HR - Green
          '#dc3545'   // Employee - Red
        ],
        borderWidth: 1
      }]
    }
  });
</script>
<!-- This script for Donut chart -->
<script>
  const donutCtx = document.getElementById('feedbackDonutChart');
  new Chart(donutCtx, {
    type: 'doughnut',
    data: {
      labels: [
        <c:forEach var="f" items="${feedbackTypes}">'${f}',</c:forEach>
      ],
      datasets: [{
        label: 'Feedbacks',
        data: [
          <c:forEach var="n" items="${feedbackCounts}">${n},</c:forEach>
        ],
        backgroundColor: [
          '#20c997', // Positive - Teal
          '#fd7e14'  // Constructive - Orange
        ],
        borderWidth: 1
      }]
    }
  });
</script>
</body>
</html>