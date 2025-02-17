<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Performance Review</title>
</head>
<body>

	<h1>Give the Review of performance for your employee</h1><br><br>
	
	<form action="savereviews" method="post">
		
		Employee Strength : <input type="text" name="strengths"><br><br>
		
		Improvement Area for Employee : <input type="text" name="improvementArea"><br><br>
		
		Give the final Rating : <input type="number" name="finalRating"><br><br>
		
		Any Comments for Employees (optional) : <input type="text" name="comments"><br><br>
		
		<input type="submit" value="Send Reviews">
	
	</form>
</body>
</html>