<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

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
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-primary {
            width: 100%;
        }
        .text-center {
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Login Here</h2>
        
        <form action="authenticate" method="post">
            <div class="mb-3">
                <input type="email" name="email" class="form-control" placeholder="E-mail" required>
            </div>

            <div class="mb-3">           
                <input type="password" name="password" class="form-control" placeholder="password" required>
            </div>

            <div class="text-center">
                <a href="forgetpassword" class="text-decoration-none">Forgot Password?</a>
            </div>

            <button type="submit" class="btn btn-primary mt-3">Login</button>
        </form>

        <div class="text-center mt-3">
            <a href="signup" class="btn btn-link">Sign Up</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
