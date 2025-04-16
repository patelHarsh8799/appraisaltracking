<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Give Appraisal Rating</title>
    <jsp:include page="../AdminCss.jsp" />
</head>
<body>
<jsp:include page="ProjectManagerHeader.jsp" />
<jsp:include page="ProjectManagerSidebar.jsp" />

<main id="main" class="main">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Give Rating for Appraisal</h5>
            <form action="submitrating" method="post">
                <!-- Hidden Appraisal ID -->
                <input type="hidden" name="appraisalId" value="${appraisal.appraisalId}" />

                <!-- Rating Input -->
                <div class="mb-3">
                    <label for="overallRate" class="form-label">Enter Rating (Out of 10)</label>
                    <input type="number" name="overallRate" class="form-control" min="0" max="10" required>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Submit Rating</button>
                </div>
            </form>
        </div>
    </div>
</main>

<jsp:include page="../AdminJs.jsp" />
</body>
</html>
