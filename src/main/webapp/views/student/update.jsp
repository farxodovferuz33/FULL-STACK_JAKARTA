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
    <title>Update Page Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>

<h1>Update the student</h1>
<form method="post">
    <div class="mb-3">
        <label for="name" class="form-label">Full name of Student</label>
        <input value="${st.getFullName()}" type="text" class="form-control" name="name" id="name" placeholder="e.g Frank Adams">
    </div>

    <div class="mb-3">
        <label for="age" class="form-label">Age</label>
        <input value="${st.getAge()}" type="number" class="form-control" name="age" id="age" placeholder="e.g 21">
    </div>

    <div class="mb-3">
        <label for="group_id" class="form-label">Group ID</label>
        <input value="${st.getGroupID()}" type="number" class="form-control" name="group_id" id="group_id" placeholder="e.g 1">
    </div>

    <button type="submit" class="btn btn-success">Add Student</button>
    <a href="${pageContext.request.contextPath}/student" class="btn btn-primary">Back</a>
</form>
</body>
</html>
