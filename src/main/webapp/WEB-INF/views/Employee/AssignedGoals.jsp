<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Goals</title>
<meta content="" name="description">
<meta content="" name="keywords">

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>
<body class="">
	<jsp:include page="EmployeeHeader.jsp"></jsp:include>
	<jsp:include page="EmployeeSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="employeehome">Home</a></li>
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
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Your Goals</h5>
								<!-- Bordered Table -->
								<table class="table table-bordered">
									<thead>
										<tr>
											<th scope="col">No.</th>
											<th scope="col">Goal Title</th>
											<th scope="col">Target Date</th>
											<th scope="col">Status</th>
											<th scope="col">Assigned By</th>
											<th scope="col">Action</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="counter" value="1" />
										<c:forEach items="${assignedGoals}" var="g">
											<tr>
												<td>${counter}</td>
												<td>${g.title}</td>
												<td>${g.targetDate}</td>
												<td>${g.status}</td>
												<td><c:choose>
														<c:when test="${g.managerId != null}">
                            ${assigndUsers[g.managerId]}
                        </c:when>
														<c:otherwise>
                            Not Assigned
                        </c:otherwise>
													</c:choose></td>
												<td><c:choose>
														<c:when test="${g.status == 'Pending'}">
															<a href="start-goal?goalId=${g.goalId}"
																class="btn btn-warning btn-sm">Start</a>
														</c:when>

														<c:when test="${g.status == 'In Progress'}">
															<a href="complete-goal?goalId=${g.goalId}"
																class="btn btn-success btn-sm">Complete</a>
														</c:when>
														<c:otherwise>
															<span class="badge bg-success">Completed</span>
														</c:otherwise>
													</c:choose></td>
											</tr>
											<c:set var="counter" value="${counter + 1}" />
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Template Main JS File -->


	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>

</body>

</html>