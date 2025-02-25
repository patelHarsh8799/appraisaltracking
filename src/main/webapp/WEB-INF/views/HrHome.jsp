<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | HR</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background-color: #0A192F;
            color: #ffffff;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        /* Sidebar Navigation */
        .sidebar {
            width: 250px;
            height: 100%;
            background: #112240;
            padding-top: 20px;
            position: fixed;
            left: 0;
            top: 0;
            overflow-y: auto;
        }

        .sidebar a {
            display: block;
            color: #a8b2d1;
            padding: 15px;
            text-decoration: none;
            font-size: 16px;
            border-left: 4px solid transparent;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background: #233554;
            color: #64ffda;
            border-left: 4px solid #64ffda;
        }

        .sidebar .logo {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            color: #64ffda;
            margin-bottom: 20px;
        }

        .content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
            overflow-y: auto;
        }

        .table-container {
            background: #112240;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.2);
        }

        .table th, .table td {
            color: #000000;
        }

        .table th {
        	color: #ffffff;
            background-color: #233554;
        }

        .btn-action {
            margin-right: 5px;
        }

        .btn-view { background-color: #64ffda; color: #112240; }
        .btn-edit { background-color: #ffa500; color: #112240; }
        .btn-delete { background-color: #ff4d4d; color: #ffffff; }
    </style>
</head>
<body>

    <!-- Sidebar Navigation -->
    <div class="sidebar">
        <div class="logo">HR Management</div>
        <a href="department"><i class="fas fa-building"></i> Add New Department</a>
        <a href="adduser"><i class="fas fa-user-plus"></i> Add New User</a>
        <a href="appraisal"><i class="fas fa-chart-line"></i> Add Appraisal Score</a>
        <a href="reviews"><i class="fas fa-comments"></i> Add Performance Reviews</a>
        <a href="training"><i class="fas fa-graduation-cap"></i> Add Training Recommendation</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h2 class="text-center">Home - HR</h2>
        <h3 class="text-center mb-4">List of Users</h3>
        <div class="table-container">
            <table class="table table-hover text-center">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Contact Number</th>
                        <th>Date Of Joining</th>
                        <th>Gender</th>
                        <th>Position</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${userlist}" var="u">
                        <tr>
                            <td>${u.firstName}</td>
                            <td>${u.lastName}</td>
                            <td>${u.contactNo}</td>
                            <td>${u.dateOfJoining}</td>
                            <td>${u.gender}</td>
                            <td>${u.position}</td>
                            <td>${u.status}</td>
                            <td>
                                <a href="viewemployee?userID=${u.userID}" class="btn btn-sm btn-view btn-action">View</a>
                                <a href="editemployee?userID=${u.userID}" class="btn btn-sm btn-edit btn-action">Edit</a>
                                <a href="deleteemployee?userID=${u.userID}" class="btn btn-sm btn-delete">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
