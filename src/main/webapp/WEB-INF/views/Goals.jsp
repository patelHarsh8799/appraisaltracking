<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Goals</title>
  
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
    <h2>Apply Goals Here</h2>
    
    <form action="savegoals" method="post">
      <div class="mb-3">
        <label for="goalName" class="form-label">Goal Name:</label>
        <input type="text" class="form-control" id="goalName" name="goalName" required>
      </div>

      <div class="mb-3">
        <label for="goalDescription" class="form-label">Goal Description:</label>
        <input type="text" class="form-control" id="goalDescription" name="goalDescription" required>
      </div>

      <div class="mb-3">
        <label for="startDate" class="form-label">Start Date:</label>
        <input type="date" class="form-control" id="startDate" name="startDate" required>
      </div>

      <div class="mb-3">
        <label for="endDate" class="form-label">End Date:</label>
        <input type="date" class="form-control" id="endDate" name="endDate" required>
      </div>

      <div class="mb-3">
        <label for="progress" class="form-label">Progress (%):</label>
        <input type="number" class="form-control" id="progress" name="progress" required>
      </div>

      <div class="mb-3">
        <label for="status" class="form-label">Status:</label>
        <input type="text" class="form-control" id="status" name="status" required>
      </div>

      <button type="submit" class="btn btn-primary">Save Progress</button>
    </form>
  </div>

  <div class="text-center mt-3">
    <a href="home" class="btn btn-secondary">Back to Home</a>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
