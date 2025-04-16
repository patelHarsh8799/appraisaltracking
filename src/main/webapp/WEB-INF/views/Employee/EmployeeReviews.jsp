<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card">
  <div class="card-body">
    <h5 class="card-title">Your Performance Reviews</h5>

    <c:if test="${not empty reviews}">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Date</th>
            <th>Reviewer</th>
            <th>Strengths</th>
            <th>Improvement Area</th>
            <th>Rating</th>
            <th>Comments</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${reviews}" var="r">
            <tr>
              <td>${r.reviewDate}</td>
              <td>${reviewerNames[r.reviewerId]}</td>
              <td>${r.strengths}</td>
              <td>${r.improvementArea}</td>
              <td><span class="badge bg-success">${r.finalRating}</span></td>
              <td>${r.comments}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </c:if>

    <c:if test="${empty reviews}">
      <p>No performance reviews available yet.</p>
    </c:if>
  </div>
</div>
	
</body>
</html>