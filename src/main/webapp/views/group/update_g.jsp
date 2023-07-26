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
    <title>Update Page Group</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>
<form method="post">
    <div class="mb-3">
        <label for="name" class="form-label">Update Name of Group</label>
        <input value="${gr.getName()}" type="text" class="form-control" name="name" id="name" aria-describedby="emailHelp" placeholder="e.g Football">
    </div>
    <button type="submit" class="btn btn-success">Update group</button>
    <a href="${pageContext.request.contextPath}/group" class="btn btn-primary">Back</a>
</form>
</body>
</html>
