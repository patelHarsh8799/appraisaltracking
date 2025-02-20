<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }
        .user-form-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
        }
        .btn-primary {
            width: 100%;
        }
          @media (max-width: 750px) {
            .row .col-md-6 {
                width: 100%;
                display: block;
            }
            #firstname{
            	margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="user-form-container">
        <h2 class="text-center">Add User</h2>
        <form action="saveuser" method="post">
            <div class="row">
                <div class="col-md-6" id="firstname">
                    <input type="text" name="firstName" class="form-control" placeholder="First Name" required>
                </div>
                <div class="col-md-6" id="lastname">
                    <input type="text" name="lastName" class="form-control" placeholder="Last Name" required>
                </div>
            </div>
            <input type="email" name="email" class="form-control mt-2" placeholder="Email" required>
            <input type="password" name="password" class="form-control mt-2" placeholder="Password" required>
            <input type="tel" name="contactNo" class="form-control mt-2" placeholder="Contact Number" pattern="[0-9]{10}" required>
            
            <label class="mt-2">Gender:</label>
            <div class="d-flex gap-3">
                <div class="form-check">
                    <input type="radio" name="gender" value="male" class="form-check-input" required>
                    <label class="form-check-label">Male</label>
                </div>
                <div class="form-check">
                    <input type="radio" name="gender" value="female" class="form-check-input" required>
                    <label class="form-check-label">Female</label>
                </div>
                <div class="form-check">
                    <input type="radio" name="gender" value="other" class="form-check-input" required>
                    <label class="form-check-label">Other</label>
                </div>
            </div>
            
            <input type="date" name="dateOfJoining" class="form-control mt-2" required>
            
            <select name="position" class="form-control mt-2" required>
                <option value="">Select Position</option>
                <option value="junior developer">Junior Developer</option>
                <option value="senior developer">Senior Developer</option>
                <option value="project manager">Project Manager</option>
                <option value="team leader">Team Leader</option>
                <option value="HR">HR</option>
                <option value="frontend developer">Frontend Developer</option>
                <option value="backend developer">Backend Developer</option>
                <option value="communicator">Communicator</option>
                <option value="UI/UX Designer">UI/UX Designer</option>
                <option value="Quality Analyst">Quality Analyst</option>
            </select>
            
            <button type="submit" class="btn btn-primary mt-3">Add User</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
