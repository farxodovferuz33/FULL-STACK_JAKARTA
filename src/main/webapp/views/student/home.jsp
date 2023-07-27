<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page STUDENT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: gainsboro">

<div class="container my-5">
    <h1 style="color: cadetblue; text-align: center">There is actions and table of students</h1>
    <a href="student/add" class="btn btn-success m-2">Add New Student </a>
    <a href="${pageContext.request.contextPath}/" class="btn btn-primary m-2">Back</a>
    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Created At</th>
            <th>Group ID</th>
            <th>Age</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${studentsList}" var="student">
            <tr>
                <td><c:out value="${student.getId()}"/></td>
                <td><c:out value="${student.getFullName()}"/></td>
                <td><c:out value="${student.getCreatedAt()}"/></td>
                <td><c:out value="${student.getGroupID()}"/></td>
                <td><c:out value="${student.getAge()}"/></td>
                <td>
                    <a href="student/delete/${student.getId()}" class="btn btn-danger">❌</a>||
                    <a href="student/update/${student.getId()}" class="btn btn-warning">✏</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
