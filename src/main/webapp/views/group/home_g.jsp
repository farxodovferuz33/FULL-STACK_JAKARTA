<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page GROUP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: gainsboro">
<div class="container my-5">
    <h1 style="color: cadetblue; text-align: center">There is actions and groups table of groups</h1>
    <a href="group/add" class="btn btn-success m-2">Add new group</a>
    <a href="${pageContext.request.contextPath}/" class="btn btn-primary m-2">Back</a>
    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Created At</th>
            <th>Student Count</th>
            <th>CreatedBy</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${groupsList}" var="group">
            <tr>
                <td><c:out value="${group.getId()}"/></td>
                <td><c:out value="${group.getName()}"/></td>
                <td><c:out value="${group.getCreatedAt()}"/></td>
                <td><c:out value="${group.getStudentCount()}"/></td>
                <td><c:out value="${group.getCreatedBy()}"/></td>
                <td>
                    <a href="group/delete/${group.getId()}" class="btn btn-danger">❌</a>||
                    <a href="group/update/${group.getId()}" class="btn btn-warning">✏</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
