<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Departments</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f4f4; /* Light gray background */
        }
        .container {
            width: 400px;
            background: white;
            padding: 30px;
            margin-top: 80px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .btn-primary {
            width: 100%;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Insert Departments Here</h2>
        
        <form action="savedepartment" method="post">
            <div class="mb-3">
                <label class="form-label">Department Name:</label>
                <input type="text" name="departmentName" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Save Department</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
