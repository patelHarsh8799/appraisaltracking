<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
	<table border="1">
		<c:forEach items="${userList}" var="u">
			<tr>
				<td>${u.firstName }</td>
				<td>${u.lastName }</td>
				<td>${u.email }</td>
				<td>${u.contactNo }</td>
				<td>${u.gender }</td>
				<td>${u.dateOfJoining }</td>
				<td>${u.position }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>