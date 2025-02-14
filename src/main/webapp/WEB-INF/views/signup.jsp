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
		
		<label for="contactNo">Contact Number:</label>
    	<input type="tel" name="contactNo" pattern="[0-9]{10}">
    	<br><br>
		
		Department Id : <input type="number" name="depId"><br><br>
		
		Gender: <input type="radio" name="gender" value="male">Male
				<input type="radio" name="gender" value="female">Female
				<input type="radio" name="gender" value="other">Other
		<br><br>
		
		<label for="role">Select Your Role :</label>
		<select name="role" id="role">
			<option value="admin">Admin</option>
			<option value="projectManeger">Project Manager</option>
			<option value="developer">Developer</option>
			<option value="hr">HR</option>
		</select><br><br>
		
		<label for="status">Select Status:</label>
	    <select name="status" id="status">
	        <option value="active">Active</option>
	        <option value="terminated">Terminated</option>
	        <option value="disable" selected>Disabled</option>
	        <option value="suspend">Suspended</option>
	    </select>
	    <br><br>
	    
	    Date Of Joining : <input type="date" name="dateOfJoining"><br><br>
		
		Position : <input type="text" name="position"><br><br>
		
		<input type="submit" value="Sign Up"><br><br>
		
	</form>
	<br>
	<br>
	
	<a href="login">Login</a>
	
</body>
</html>
