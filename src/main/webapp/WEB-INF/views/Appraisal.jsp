<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appraisal Score</title>
</head>
<body>
	
	<h1>Mark Appraisal Score</h1>
	
	<form action="saveappraisal" method="post">
	
		Appraisal Cycle : <input type="text" name="appraisalCycle"><br><br>
		
		Start Date : <input type="date" name="startDate"><br><br>
		
		End Date : <input type="date" name="endDate"><br><br>
		
		overallRate : <input type="number" name="overallRate"><br><br>
		
		Status : <input type="text" name="status"><br><br>  
		
		<input type="submit" value="Save Score">
	
	</form>
</body>
</html>







