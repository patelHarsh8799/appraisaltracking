<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recommended Training</title>
</head>
<body>

	<h1>Suggest recommended training</h1><br><br>
	
	<form action="savetraining" method="post">
	
		Name of Training : <input type="text" name="trainingName"><br><br>
		
		Description of Training : <input type="text" name="trainingDescription"><br><br>
		
		Status : <input type="text" name="status"><br><br>
		
		<input type="submit" value="Send"><br><br>
	
	</form>
</body>
</html>