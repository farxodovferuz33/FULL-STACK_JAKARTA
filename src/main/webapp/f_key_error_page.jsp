<%--
  Created by IntelliJ IDEA.
  User: Feruz
  Date: 7/26/2023
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1 style="color: red">Please add Student only with available group id or age should be higher than 8</h1>
    <a href="${pageContext.request.contextPath}/group" class="btn btn-warning">Go to the Groups to see ids</a>
    <a href="${pageContext.request.contextPath}/student" class="btn btn-warning">Go Back</a>
</div>

</body>
</html>
