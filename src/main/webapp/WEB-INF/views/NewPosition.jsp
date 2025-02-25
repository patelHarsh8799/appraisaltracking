<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Position</title>
</head>
<body>
	<h1>New Position</h1>
	<form action="saveposition" method="post">
		Position Name : <input type="text" name="positionName"><br>
		
		<select name="departmentId">
			<option>Select Department</option>
			<c:forEach items="${allDepartments}" var="d">
				<option value="${d.departmentId}">${d.departmentName}</option>
			</c:forEach>
		</select>
		<input type="submit" value="Add">
	</form>
	
	
</body>
</html>