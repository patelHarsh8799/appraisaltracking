<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Manager Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Header -->
    <div class="header bg-dark text-white p-3 mb-4">
        <div class="container d-flex justify-content-between">
            <h3>Project Manager Portal</h3>
            <span>Welcome, ${manager.name}</span>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action active">Dashboard</a>
                    <a href="#" class="list-group-item list-group-item-action">Create Appraisal</a>
                    <a href="#" class="list-group-item list-group-item-action">Review Submissions</a>
                    <a href="#" class="list-group-item list-group-item-action">Team Goals</a>
                    <a href="#" class="list-group-item list-group-item-action">Feedback</a>
                    <a href="#" class="list-group-item list-group-item-action">Training Recommendations</a>
                    <a href="#" class="list-group-item list-group-item-action">Reports</a>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9">
                <!-- Overview Section -->
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Team Overview</h5>
                        <p>Total Team Members: 8</p>
                        <p>Pending Appraisals: 3</p>
                        <p>Average Team Rating: 4.1</p>
                    </div>
                </div>

                <!-- Assigned Appraisal Section -->
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Assigned Appraisals</h5>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Employee</th>
                                    <th>Title</th>
                                    <th>Due Date</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Harsh Patel</td>
                                    <td>Q2 Review</td>
                                    <td>2025-04-20</td>
                                    <td><span class="badge bg-warning">In Progress</span></td>
                                </tr>
                                <tr>
                                    <td>Neha Shah</td>
                                    <td>Probation Review</td>
                                    <td>2025-04-25</td>
                                    <td><span class="badge bg-success">Completed</span></td>
                                </tr>
                                <tr>
                                    <td>Vivek Mehta</td>
                                    <td>Annual Review</td>
                                    <td>2025-05-01</td>
                                    <td><span class="badge bg-secondary">Pending</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Team Goal Progress Section -->
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Team Goals Progress</h5>
                        <div class="row mb-3">
                            <div class="col-md-4"><strong>Spring Boot Completion</strong></div>
                            <div class="col-md-5">
                                <div class="progress">
                                    <div class="progress-bar bg-success" style="width: 80%"></div>
                                </div>
                            </div>
                            <div class="col-md-3 text-end">
                                <span class="badge bg-success">On Track</span>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4"><strong>API Integration</strong></div>
                            <div class="col-md-5">
                                <div class="progress">
                                    <div class="progress-bar bg-warning" style="width: 40%"></div>
                                </div>
                            </div>
                            <div class="col-md-3 text-end">
                                <span class="badge bg-warning">Needs Attention</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Quick Actions -->
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Quick Actions</h5>
                        <a href="#" class="btn btn-outline-primary me-2">Create New Appraisal</a>
                        <a href="#" class="btn btn-outline-secondary">Review Pending Appraisals</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- </body>
</html> -->


<!-- Create Appraaisal -->

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<!-- <!DOCTYPE html>
<html> -->
<!-- <head>
    <meta charset="UTF-8">
    <title>Create Appraisal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head> -->
<!-- <body> -->
    <div class="container mt-5">
        <h2 class="mb-4">Create New Appraisal Cycle</h2>

        <form action="submit-appraisal" method="post">
            <div class="mb-3">
                <label for="title" class="form-label">Appraisal Title</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="e.g., Q2 Performance Review" required>
            </div>

            <div class="mb-3">
                <label for="employeeId" class="form-label">Assign To (Employee ID)</label>
                <input type="number" class="form-control" id="employeeId" name="employeeId" placeholder="Enter employee ID" required>
            </div>

            <div class="mb-3">
                <label for="startDate" class="form-label">Start Date</label>
                <input type="date" class="form-control" id="startDate" name="startDate" required>
            </div>

            <div class="mb-3">
                <label for="endDate" class="form-label">End Date</label>
                <input type="date" class="form-control" id="endDate" name="endDate" required>
            </div>

            <div class="mb-3">
                <label for="status" class="form-label">Status</label>
                <select class="form-select" id="status" name="status">
                    <option value="Assigned">Assigned</option>
                    <option value="In Progress">In Progress</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Create Appraisal</button>
        </form>
    </div>
	<form action="submit-goal" method="post">
    <div class="mb-3">
        <label>Assign To:</label>
        <select name="employeeId" class="form-select">
            <option value="101">Harsh Patel</option>
            <option value="102">Neha Shah</option>
        </select>
    </div>

    <div class="mb-3">
        <label>Goal Title:</label>
        <input type="text" name="title" class="form-control" required />
    </div>

    <div class="mb-3">
        <label>Target Date:</label>
        <input type="date" name="targetDate" class="form-control" />
    </div>

    <div class="mb-3">
        <label>Status:</label>
        <select name="status" class="form-select">
            <option value="Pending">Pending</option>
            <option value="In Progress">In Progress</option>
            <option value="Completed">Completed</option>
        </select>
    </div>

    <button type="submit" class="btn btn-success">Assign Goal</button>
</form>
	
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> -->
<!-- </body> -->
</html>
