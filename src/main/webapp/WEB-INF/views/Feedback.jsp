<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Form</title>
</head>
<body>
	<h1>Give the feedback</h1>
	
	<form action="savefeedback" method="post">
		
		Appraisal Id : <input type="text" name="appraisalId"><br><br>
		
		Feedback : <input type="text" name="feedbackText"><br><br>
				
		Type of feedback : <input type="text" name="type"><br><br> <!-- peer or manager -->
		
		<input type="submit" value="Send">
		
	</form>
</body>
</html>