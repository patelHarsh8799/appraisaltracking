<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View  User</title>
</head>
<body>
	<h1>User Details</h1>
	
	User Name : ${user.firstName} + ${user.lastName}<br>
	
	Contact Number : ${user.contactNo}<br>
	
	Gender : ${user.gender}<br>

	Date of Joining : ${user.dateOfJoining}<br>
	
	Position : ${user.position}<br>
	
	Role : ${user.role}<br>	
	
</body>
</html>