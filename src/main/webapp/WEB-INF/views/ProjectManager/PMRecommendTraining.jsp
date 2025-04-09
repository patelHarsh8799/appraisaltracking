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
							<h5 class="card-title">Suggest Training Here </h5>
							<form class="row g-3" action="savetraining" method="post"
								enctype="multipart/form-data">
								<div class="col-md-12">
									<label for="trainingName" class="form-label">Training Name:</label> <input type="text" class="form-control"
										name="trainingName" id="trainingName" required>
									<div class="invalid-feedback">Please enter Appraisal
										Cycle!</div>
								</div>
								<div class="row mb-3">
									<label for="inputPassword" class="col-sm-4 col-form-label">Goal
										Description</label>
									<div class="col-sm-8">
										<textarea class="form-control" style="height: 100px"
											name="goalDescription"></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<label class="col-sm-4 col-form-label">Recommended To: </label>
									<div class="col-sm-8">
										<select class="form-select" name="employeeId"
											aria-label="Default select example">
											<option selected="">Select</option>
											<c:forEach items="${allEmployees}" var="e">
												<option value="${e.userID}">${e.firstName}
													${e.lastName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">To Appraisal: </label>
											<div class="col-sm-8">
												<select class="form-select" name="appraisalId"
													aria-label="Default select example">
													<option selected="">Select</option>
													<c:forEach items="${allAppraisal}" var="a">
														<option value="${a.appraisalId}">${a.appraisalCycle}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<label class="form-label" for="status">Status:</label> <select
										class="form-select" aria-label="Status select" name="status"
										required>
										<option value="" disabled selected>Select Status</option>
										<option value="Pending">Recommended</option>
										<option value="Completed">Completed</option>
									</select>
								</div>

								<div class="row mb-3">
									<div class="col-sm-12">
										<div class="row mb-3"
											style="margin-top: 1rem; margin-bottom: 0 !important;">
											<label class="col-sm-4 col-form-label">Recommended By: </label>
											<div class="col-sm-8">
												<select class="form-select" name="recommendedBy"
													aria-label="Default select example">
													<option selected="">Select</option>
													<c:forEach items="${allManagers}" var="e">
														<option value="${e.userID}">${e.firstName}  ${e.lastName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
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