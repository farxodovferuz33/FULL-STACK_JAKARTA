<%--
  Created by IntelliJ IDEA.
  User: Feruz
  Date: 7/24/2023
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Page Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: gainsboro">

<div class="container my-5">
    <form method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Full name of Student</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="e.g Frank Adams">
        </div>
        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="number" class="form-control" name="age" id="age" placeholder="e.g 21">
        </div>
        <div class="mb-3">
            <label for="group_id" class="form-label">Group ID</label>
            <input type="number" class="form-control" name="group_id" id="group_id" placeholder="e.g 1">
        </div>
        <button type="submit" class="btn btn-success">Add Student</button>
        <a href="${pageContext.request.contextPath}/student" class="btn btn-primary">Back</a>
    </form>
</div>

</body>
</html>
