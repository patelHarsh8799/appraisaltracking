<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Performance Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            background-color: #f8f9fa; /* Soft gray background */
            font-family: 'Arial', sans-serif;
        }
        .container {
            text-align: center;
            margin-top: 80px;
            padding: 40px;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 600px;
        }
        h1 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #007bff;
        }
        .btn-custom {
            width: 100%;
            margin: 8px 0;
            padding: 12px;
            font-size: 1rem;
            font-weight: 500;
            border-radius: 8px;
            transition: 0.3s ease-in-out;
        }
        .btn-custom:hover {
            transform: scale(1.05);
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            border: none;
        }
        .btn-secondary:hover {
            background-color: #545b62;
        }
        .icon {
            margin-right: 8px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1><i class="fa-solid fa-building"></i> Employee Management</h1>
        
        <!-- Add New Data -->
        <h4 class="mb-3">Add New Records</h4>
        <a href="department" class="btn btn-primary btn-custom"><i class="fa-solid fa-sitemap icon"></i> New Department</a>
        <a href="appraisal" class="btn btn-primary btn-custom"><i class="fa-solid fa-chart-line icon"></i> New Appraisal</a>
        <a href="feedback" class="btn btn-primary btn-custom"><i class="fa-solid fa-comments icon"></i> New Feedback</a>
        <a href="goals" class="btn btn-primary btn-custom"><i class="fa-solid fa-bullseye icon"></i> New Goal</a>
        <a href="reviews" class="btn btn-primary btn-custom"><i class="fa-solid fa-star icon"></i> New Review</a>
		<a href="training" class="btn btn-primary btn-custom"><i class="fa-solid fa-chalkboard-teacher icon"></i> New Training</a>

        <hr>

        <!-- View Existing Data -->
        <h4 class="mb-3">View Data</h4>
        <a href="listemployee" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-user icon"></i> Show Employees</a>
        <a href="listdepartment" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-sitemap icon"></i> Show Departments</a>
        <a href="listappraisal" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-chart-line icon"></i> Show Appraisal Data</a>
        <a href="listfeedback" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-comments icon"></i> Show Feedbacks</a>
        <a href="listgoals" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-bullseye icon"></i> Show Goals</a>
        <a href="listreviews" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-star icon"></i> Show Reviews</a>
        <a href="listtraining" class="btn btn-outline-primary btn-custom"><i class="fa-solid fa-chalkboard-teacher icon"></i> Show Training Data</a>
    
    	<hr>
    	
    	<!-- Login Button -->
        <a href="login" class="btn btn-secondary btn-custom"><i class="fa-solid fa-sign-in-alt icon"></i> Login</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
