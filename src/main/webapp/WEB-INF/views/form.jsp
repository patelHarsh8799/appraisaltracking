
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main id="main" class="main">

	<div class="pagetitle">
		<h1>Add New User</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item active">Add User</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->
	<section class="section">
		<div class="row justify-content-center">
			<div class="col-lg-6" style="max-width: 500px;">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Add User Here</h5>

						<!-- Multi Columns Form -->
						<form class="row g-3">

							<div class="col-md-6">
								<label for="firstName" class="form-label">First Name</label> <input
									type="text" class="form-control" name="lastName" id="firstName">
								<div class="invalid-feedback">Please enter your password!</div>
							</div>
							<div class="col-md-6">
								<label for="lastName" class="form-label">Last Name</label> <input
									type="text" class="form-control" name="lastName" id="lastName">
								<div class="invalid-feedback">Please enter your password!</div>
							</div>
							<div class="col-md-12">
								<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-10">
									<input type="email" class="form-control">
								</div>
							</div>
							<div data-mdb-input-init class="form-outline">
								<label class="form-label" for="typePhone">Phone number
									input</label> <input type="tel" id="typePhone" class="form-control" />
							</div>
							<div class="invalid-feedback">Please enter your password!</div>

							<div class="row mb-3">
								<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control">
								</div>
							</div>
							<div class="row mb-3">
								<label for="inputDate" class="col-sm-2 col-form-label">Date</label>
								<div class="col-sm-10">
									<input type="date" class="form-control">
								</div>
							</div>
							<div class="row mb-6">
								<label class="col-sm-4 col-form-label">Department : </label>
								<div class="col-sm-6">
									<select class="form-select" aria-label="Default select example">
										<option selected="">Select</option>
										<c:forEach items="${allDepartments}" var="d">
											<option value="${d.departmentId}">${d.departmentName}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row mb-3">
								<label class="col-sm-4 col-form-label">Position : </label>
								<div class="col-sm-6">
									<select class="form-select" aria-label="Default select example">
										<option selected="">Select</option>
										<c:forEach items="${allPositions}" var="p">
											<option value="${p.positionId}">${p.positionName}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck">
									<label class="form-check-label" for="gridCheck"> Check
										me out </label>
								</div>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-secondary">Reset</button>
							</div>
						</form>
						<!-- End Multi Columns Form -->

					</div>
				</div>

			</div>


		</div>
	</section>

</main>