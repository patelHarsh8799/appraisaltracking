<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add New Appraisal</title>
<meta content="" name="description">
<meta content="" name="keywords">

<jsp:include page="../AdminCss.jsp"></jsp:include>

</head>

<body>

	<jsp:include page="ProjectManagerHeader.jsp"></jsp:include>

	<jsp:include page="ProjectManagerSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<section class="section">
			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Create Appraisal</h5>
							<form class="row g-3" action="submitappraisal" method="post"
								enctype="multipart/form-data">
								<div class="col-md-12">
									<label for="appraisalCycle" class="form-label">Appraisal
										Cycle Name :</label> <input type="text" class="form-control"
										name="appraisalCycle" id="appraisalCycle" required>
									<div class="invalid-feedback">Please enter Appraisal
										Cycle!</div>
								</div>

								<div class="col-md-12">
									<label for="startDate" class="form-label">Start Date:</label> <input
										type="date" class="form-control" name="startDate"
										id="startDate" required>
									<div class="invalid-feedback">Please enter Start Date!</div>
								</div>

								<div class="col-md-12">
									<label for="endDate" class="form-label">End Date:</label> <input
										type="date" class="form-control" name="endDate" id="endDate"
										required>
									<div class="invalid-feedback">Please enter End Date!</div>
								</div>

								<div class="col-md-12">
									<label class="col-sm-4 col-form-label">Employee: </label>
									<div class="col-sm-8">
										<select class="form-select" name="assignToUserID"
											aria-label="Default select example">
											<option selected="">Select</option>
											<c:forEach items="${allEmployees}" var="e">
												<option value="${e.userID}">${e.firstName}
													${e.lastName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<label for="overallRate" class="form-label">Overall
										Rating:</label> <input type="number" class="form-control"
										name="overallRate" id="overallRate" min="1" max="10" required>
									<div class="invalid-feedback">Please enter a rating
										between 1 and 10!</div>
								</div>

								<div class="col-md-12">
									<label class="form-label" for="status">Status:</label> <select
										class="form-select" aria-label="Status select" name="status"
										required>
										<option value="" disabled selected>Select Status</option>
										<option value="Pending">Assigned</option>
										<option value="Pending">Pending</option>
										<option value="Completed">Completed</option>
									</select>
								</div>
								
								<span class="text-danger">${error}</span>

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

	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


	<jsp:include page="../AdminJs.jsp"></jsp:include>
</body>

</html>