<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Self Assesment Form</title>
</head>
<body>
	<form action="submitassesment" method="post">
	
		<h1>Personal Information</h1>
		
		Name : <input type="text" name="name"><br><br>
		
		Employee ID : <input type="text" name="id"><br><br>
		
		Department : <input type="text" name="department"><br><br>
		
		<h3>Job Responsibilities Review</h3>
		
		<input type="text" name="jobreviews">
		
		<h3>Goal Achievement</h3>
		
		<input type="text" name="goals">
		
		<h3>Strengths & Skills</h3>
		
		<input type="text" name="strengthskills">
		
		<h3>Challenges Faced</h3>
		
		<input type="text" name="challenges">
		
		<h3>Training & Development Needs</h3>
		
		<input type="text" name="needs">
		
		<h3>Future Goals & Plans</h3>
		
		<input type="text" name="plans">
		
		<h3>Overall Self-Rating</h3>
		
		<input type="text" name="rating">
		
		<h3>Additional Comments(optional feedback)</h3>
		
		<input type="text" name="optionalfeedback"><br><br>
		
		<input type="submit" value="submit">
		
	</form>
	
	
	
</body>
</html>