<%--
  Created by IntelliJ IDEA.
  User: Feruz
  Date: 7/26/2023
  Time: 2:12 PM
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
  <h1 style="color: red">You cannot delete this group because there is student available in this group</h1>
  <h2 style="color: green">To Delete this group, please delete students first available in this group</h2>
  <a href="${pageContext.request.contextPath}/student" class="btn btn-warning">Go to students table</a>
  <a href="${pageContext.request.contextPath}/" class="btn btn-warning">Go to home</a>

</div>

</body>
</html>
