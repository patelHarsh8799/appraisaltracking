<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f4f4; /* Light gray background */
        }
        .container {
            text-align: center;
            margin-top: 100px;
            padding: 50px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
        .btn-custom {
            width: 200px;nn
            margin: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
    
        <h1>Welcome</h1>
        
        <h3>If you are HR of company then<br>you can add new department</h3>
        
        <a href="department" class="btn btn-primary btn-custom">New Department</a>
        <a href="login" class="btn btn-secondary btn-custom">Login</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
