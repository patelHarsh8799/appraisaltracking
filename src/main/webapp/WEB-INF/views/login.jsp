<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>

	<h1>Login Here</h1>
	
	<form action="authenticate" method="post">
		
		E-mail: <input type="email" name="email"/><br><br>
		
		Password: <input type="password" name="password"><br><br>
		
		Confirm Password: <input type="password" name="conpassword"><br><br>
		
		<a href="forgetpassword">Forget Password?</a><br><br>
		
		<input type="submit" value="Login"><br><br>
		
	</form><br><br>
	
	<a href="signup">Sign up</a>
	
</body>
</html>