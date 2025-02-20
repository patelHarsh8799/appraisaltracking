<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User List</title>
  
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
      body {
          background-color: #f4f4f4; /* Light gray background */
      }
      .container {
          width: 80%;
          background: white;
          padding: 30px;
          margin-top: 50px;
          border-radius: 10px;
          box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
      }
      .table th, .table td {
          text-align: center;
      }
  </style>
</head>
<body>

  <div class="container">
    <h2 class="text-center mb-4">User List</h2>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Contact No</th>
          <th>Gender</th>
          <th>Date of Joining</th>
          <th>Position</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${userList}" var="u">
          <tr>
            <td>${u.firstName}</td>
            <td>${u.lastName}</td>
            <td>${u.email}</td>
            <td>${u.contactNo}</td>
            <td>${u.gender}</td>
            <td>${u.dateOfJoining}</td>
            <td>${u.position}</td>
            <td><a href="viewuser?userId=${u.userId}">View</a> | <a href="deleteuser?userId=${u.userId}">Delete</a> | Edit </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  <div class="text-center mt-3">
      <a href="home" class="btn btn-secondary">Back to Home</a>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
