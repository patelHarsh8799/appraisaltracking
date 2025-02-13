<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>

	<h1>Sign Up Here</h1>
	
	<form action="saveuser" method="post">
	
		First Name: <input type="text" name="firstName"/><br><br>
		
		Last Name: <input type="text" name="lastName"/><br><br>
		
		E-mail: <input type="email" name="email"/><br><br>
		
		Password: <input type="password" name="password"><br><br>
		
		Confirm Password: <input type="password" name="conpassword"><br><br>
		
		Contact No. : <input type="text" name="contactNo"/><br><br>
		
		Upload Your Resume Here: <input type="file" name="file"><br><br>
		
		Gender: <input type="radio" name="gender" value="male">Male
				<input type="radio" name="gender" value="female">Female
				<input type="radio" name="gender" value="other">Other
		<br><br>
		
		<input type="submit" value="Sign Up"><br><br>
		
	</form>
	<br>
	<br>
	
	<a href="login">Login</a>
	
</body>
</html>