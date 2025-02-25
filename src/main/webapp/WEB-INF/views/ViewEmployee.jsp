<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
</head>
<body>
	<h2>View Employee Details</h2>
	
		EmployeeName : ${employee.firstName} ${employee.lastName}
		Email : ${employee.email}
		Contact No: ${employee.contactNo}
		Gender : ${gender}
		Date of Joining :  ${employee.dateOfJoining}<br>
		Position :  ${employee.position}<br>
		
		<a href="hrhome" class="btn-custom"><i class="fa-solid fa-arrow-left"></i>Back to list</a>

</body>
</html>