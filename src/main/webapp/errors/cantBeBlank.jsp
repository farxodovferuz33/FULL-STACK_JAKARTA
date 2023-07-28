<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cannot be blank</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="color: red">Fields cannot be blank</h1>
    <a href="${pageContext.request.contextPath}/" class="btn btn-warning">Go to home page</a>
    <a href="${pageContext.request.contextPath}/student/add" class="btn btn-warning">Go to student add page</a>
    <a href="${pageContext.request.contextPath}/group/add" class="btn btn-warning">Go to group add page</a>
</div>
</body>
</html>
