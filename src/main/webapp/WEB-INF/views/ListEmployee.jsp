<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Employee</title>
</head>
<body>
	<h2>List Employee</h2>

	<table border="1">
		<tr>
			<th>Employee Name</th>
			<th>Date of Joining</th>
			<th>Position</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${employeeList}" var="e">

			<tr>
				<td>${e.employeeName }</td>
				<td>${e.dateOfJoining}</td>
				<td>${e.position}</td>
				<td><a href="viewemployee?employeeId=${e.employeeId}">View</a> | <a href="deleteemployee?employeeId=${e.employeeId}">Delete</a> | Edit </td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>