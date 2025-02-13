<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm Password</title>
</head>
<body>

	<h1>Confirm Password</h1>
	
	<form action="updatepassword" method="post">
	
		E-mail: <input type="email" name="email"><br><br>
		
		OTP: <input type="text" name="otp"><br><br>
		
		New Password: <input type="password" name="password"><br><br>
		
		Confirm Password: <input type="password" name="conpassword"><br><br>
		
		<input type="submit" value="Update"><br><br>
	</form>
</body>
</html>