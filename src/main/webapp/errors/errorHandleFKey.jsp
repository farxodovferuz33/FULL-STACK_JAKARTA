<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Error page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
