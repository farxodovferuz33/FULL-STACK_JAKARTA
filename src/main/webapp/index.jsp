<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Index JSP First Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: gainsboro">
<jsp:include page="fragments/header.jsp"/>
<div class="container my-5">
    <h1 style="color: cadetblue">Welcome to our web, this is controller of groups and students in academy/school/university</h1>
    <br>
    <h3 style="color: chocolate">You can click group controller to do actions for groups, and for students you can click student controller above</h3>
</div>
</body>
</html>
