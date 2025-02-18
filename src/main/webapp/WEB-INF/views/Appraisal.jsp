<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Appraisal Score</title>

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
    <h2>Mark Appraisal Score</h2>

    <form action="saveappraisal" method="post">
      <div class="mb-3">
        <label for="appraisalCycle" class="form-label">Appraisal Cycle:</label>
        <input type="text" class="form-control" id="appraisalCycle" name="appraisalCycle" required>
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
        <label for="overallRate" class="form-label">Overall Rating:</label>
        <input type="number" class="form-control" id="overallRate" name="overallRate" required>
      </div>

      <div class="mb-3">
        <label for="status" class="form-label">Status:</label>
        <input type="text" class="form-control" id="status" name="status" required>
      </div>

      <button type="submit" class="btn btn-primary">Save Score</button>
    </form>
  </div>

  <div class="text-center mt-3">
    <a href="home" class="btn btn-secondary">Back to Home</a>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>









