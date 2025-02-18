<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Recommended Training</title>

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
        <h2>Suggest Recommended Training</h2>
        
        <form action="savetraining" method="post">
            <div class="mb-3">
                <label class="form-label">Name of Training:</label>
                <input type="text" name="trainingName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Description of Training:</label>
                <input type="text" name="trainingDescription" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Status:</label>
                <input type="text" name="status" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Send</button>
        </form>
    </div>

    <div class="text-center mt-3">
        <a href="home" class="btn btn-secondary">Back to Home</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
