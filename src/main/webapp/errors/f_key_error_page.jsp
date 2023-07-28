<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Error page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: lightgrey">
<div class="container my-5">
    <h1 style="color: red">Please add/update Student only with available group id or age should be higher than 8</h1>
    <a href="${pageContext.request.contextPath}/group" class="btn btn-warning">Go to the Groups to see ids</a>
    <a href="${pageContext.request.contextPath}/student/add" class="btn btn-warning">Go Back</a>
</div>
</body>
</html>
