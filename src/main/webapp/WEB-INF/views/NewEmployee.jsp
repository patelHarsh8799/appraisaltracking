<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new Employee</title>
</head>
<body>

	<form action="saveemployee" method="post">
	
		Full Name of Employee : <input type="text" name="employeeName"><br><br>
		
		Date of Joining of Employee : <input type="date" name="dateOfJoining"><br><br>
		
		Position of Employee : <input type="text" name="position"><br><br>
		
		<input type="submit" value="Add Employee">
	
	</form>
		<a href="home" class="btn-custom"><i class="fa-solid fa-arrow-left"></i>Go to Home</a>
		<a href="listemployee" class="btn-custom"><i class="fa-solid fa-arrow-left"></i>Back to list</a>
</body>
</html>