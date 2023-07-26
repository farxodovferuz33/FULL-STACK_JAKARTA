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
    <title>Delete Page Group</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>

<form method="post">
    <div class="alert alert-danger">
        <h1>Are you sure want to delete this group name:
            ${gr.getName()} </h1>
    </div>
    <a href="${pageContext.request.contextPath}/group" class="btn btn-warning">Back</a>

    <button type="submit" class="btn btn-danger">Confirm</button>
</form>

</body>
</html>
