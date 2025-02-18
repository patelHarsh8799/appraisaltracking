<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Give Feedback</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            padding: 30px;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 500px;
        }
        h1 {
            text-align: center;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
        }
        .btn-custom {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Give Your Feedback</h1>

        <form action="savefeedback" method="post">
            <div class="mb-3">
                <label for="feedbackText" class="form-label">Feedback:</label>
                <textarea class="form-control" id="feedbackText" name="feedbackText" rows="3" required></textarea>
            </div>

            <div class="mb-3">
                <label for="type" class="form-label">Type of Feedback:</label>
                <select class="form-select" id="type" name="type" required>
                    <option value="">Select Type</option>
                    <option value="Peer">Peer</option>
                    <option value="Manager">Manager</option>
                </select>
            </div>

            <button type="submit" class="btn-custom">Send Feedback</button>
        </form>
    </div>
    <div class="text-center mt-3">
            <a href="home" class="btn btn-secondary">Back to Home</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
