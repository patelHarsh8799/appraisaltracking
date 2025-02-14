<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f4f4; /* Light gray background */
        }
        .container {
            width: 600px;
            background: white;
            padding: 30px;
            margin-top: 50px;
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
    </style>
</head>
<body>

    <div class="container">
        <h2>Sign Up Here</h2>
        
        <form action="saveuser" method="post">
            <div class="mb-3">
                <label class="form-label">First Name:</label>
                <input type="text" name="firstName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Last Name:</label>
                <input type="text" name="lastName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">E-mail:</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Password:</label>
                <input type="password" name="password" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Confirm Password:</label>
                <input type="password" name="conpassword" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Contact Number:</label>
                <input type="tel" name="contactNo" class="form-control" pattern="[0-9]{10}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Gender:</label><br>
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" value="male" class="form-check-input" required>
                    <label class="form-check-label">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" value="female" class="form-check-input" required>
                    <label class="form-check-label">Female</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" value="other" class="form-check-input" required>
                    <label class="form-check-label">Other</label>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Date of Joining:</label>
                <input type="date" name="dateOfJoining" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Position:</label>
                <input type="text" name="position" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Sign Up</button>
        </form>

        <div class="text-center mt-3">
            <a href="login" class="btn btn-link">Login</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
