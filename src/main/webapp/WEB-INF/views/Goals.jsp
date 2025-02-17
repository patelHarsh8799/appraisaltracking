<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goals</title>
</head>
<body>
	<h1>Apply Goals Here</h1>
	
	<form action="savegoals" method="post">
		
		Goal Name : <input type="text" name="goalName"><br><br>
		
		Goal Description : <input type="text" name="goalDescription"><br><br>
		
		Start Date : <input type="date" name="startDate"><br><br>
		
		End Date : <input type="date" name="endDate"><br><br>
		
		Progress : <input type="number" name="progress"><br><br>
		
		Status : <input type="text" name="status"><br><br>  
		
		<input type="submit" value="Save Progress">
	</form>
</body>
</html>