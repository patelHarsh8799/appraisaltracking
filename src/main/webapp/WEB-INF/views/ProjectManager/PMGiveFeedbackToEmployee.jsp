<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Give Feedback</title>
<jsp:include page="../AdminCss.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
</head>

<body>
	<jsp:include page="ProjectManagerHeader.jsp"></jsp:include>
	<jsp:include page="ProjectManagerSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Give Feedback</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Feedback</li>
				</ol>
			</nav>
		</div>

		<section class="section dashboard">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Submit Feedback for Employee</h5>
							<form action="savefeedback" method="post">

								<!-- Feedback Text -->
								<div class="mb-3">
									<label for="feedbackText" class="form-label">Feedback</label>
									<textarea class="form-control" name="feedbackText" rows="4" placeholder="Write your feedback here..." required></textarea>
								</div>

								<!-- Feedback To (Employee) -->
								<div class="mb-3">
									<label class="form-label">Feedback To</label>
									<select class="form-select" id="employee" name="employeeId" onChange="getAppraisals()" required>
										<option value="">Select Employee</option>
										<c:forEach items="${allEmployees}" var="e">
											<option value="${e.userID}">${e.firstName} ${e.lastName}</option>
										</c:forEach>
									</select>
								</div>

								<!-- Appraisal Cycle -->
								<div class="mb-3">
									<label class="form-label">For Appraisal Cycle</label>
									<select class="form-select" id="appraisal" name="appraisalId" required>
										<option selected="">Select</option>
									</select>
								</div>

								<!-- Feedback Type -->
								<div class="mb-3">
									<label class="form-label">Feedback Type</label>
									<select class="form-select" name="type" required>
										<option value="">Select Type</option>
										<option value="Positive">Positive</option>
										<option value="Constructive">Constructive</option>
									</select>
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

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center active">
		<i class="bi bi-arrow-up-short"></i>
	</a>

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
