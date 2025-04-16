<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<jsp:include page="../AdminCss.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>

</head>

<body class="">

	<jsp:include page="HRHeader.jsp"></jsp:include>
	<jsp:include page="HRSidebar.jsp"></jsp:include>

	<main id="main" class="main" >
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<section class="section dashboard">
			<div class="row justify-content-center">
				<div class="col-lg-6">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Give Review To Employee For Them
								Performance</h5>

							<!-- General Form Elements -->
							<form action="submitreview" method="post">

								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">Review For: </label> <select
												class="form-select" id="employee" name="employeeId"
												onChange="getAppraisals()" required>
												<option value="">Select Employee</option>
												<c:forEach items="${allEmployees}" var="e">
													<option value="${e.userID}">${e.firstName}
														${e.lastName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>

								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">For Appraisal:
											</label>
											<div class="col-sm-8">
												<select class="form-select" id="appraisal"
													name="appraisalId" required>
													<option selected="">Select</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-6" style="margin-bottom: 20px !important;">
									<label for="inputText" class="col-sm-4 col-form-label">Employee
										Strength: </label>
									<div class="col-sm-8">
										<input type="text" class="form-control" name="strengths">
									</div>
								</div>
								<div class="row mb-6" style="margin-bottom: 20px !important;">
									<label for="inputText" class="col-sm-4 col-form-label">Suggest
										Improvement Area: </label>
									<div class="col-sm-8">
										<input type="text" class="form-control" name="improvementArea">
									</div>
								</div>
								<div class="col-md-12">
									<label for="finalRating" class="form-label">Final
										Rating: </label> <input type="number" class="form-control"
										name="finalRating" id="finalRating" min="1" max="10" required>
									<div class="invalid-feedback">Please enter a rating
										between 1 and 10!</div>
								</div>
								<div class="col-md-12">
									<div class="col-sm-12">
										<textarea class="form-control" name="comments" rows="4"
											placeholder="Write your Comment to Emloyee here..."></textarea>
									</div>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>

							</form>
						</div>
					</div>

				</div>
			</div>
		</section>
	</main>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center active"><i
		class="bi bi-arrow-up-short"></i></a>
	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../AdminJs.jsp"></jsp:include>
	
	<script type="text/javascript">
		function getAppraisals() {
			console.log("Category Change");
			let employeeID = document.getElementById("employee").value;
			console.log(employeeID);

			$
					.get("getallappraisalsbyemployeeid/" + employeeID,
							function() {

							})
					.done(
							function(data) {
								console.log(data);
								$('#appraisal')
										.empty()
										.append(
												'<option selected="selected" value="-1">Select</option>')
								//fill the positions
								for (var i = 0; i < data.length; i++) {
									$('#appraisal').append(
											'<option value="' + data[i].appraisalId + '">'
													+ data[i].appraisalCycle
													+ '</option>');
								}

							}).fail(function() {

					});

		}
	</script>

</body>

</html>