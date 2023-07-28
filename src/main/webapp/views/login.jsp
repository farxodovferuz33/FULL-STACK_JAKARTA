<%--
  Created by IntelliJ IDEA.
  User: Feruz
  Date: 7/28/2023
  Time: 7:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log in</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>

<div class="container my-5">
  <form method="post">
    <label for="username">Username</label>
    <input class="form-control" type="text" name="username" id="username" placeholder="username">
    <label for="password" class="my-3">Password</label>
    <input class="form-control" type="password" name="password" id="password" placeholder="password">
    <button type="submit" class="btn btn-success my-2">Log in</button>
    <a href="/" class="btn btn-warning my-2">Back</a>
  </form>
</div>

</body>
</html>
