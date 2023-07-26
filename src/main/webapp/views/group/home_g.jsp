<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--
  Created by IntelliJ IDEA.
  User: Feruz
  Date: 7/24/2023
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page GROUP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<h1>This is page of GROUP MAIN PAGE</h1>

<a href="group/add" class="btn btn-success">Add new group</a>
<a href="${pageContext.request.contextPath}/" class="btn btn-primary">Back</a>
<table class="table table-dark table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Created At</th>
        <th>Student Count</th>
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
            <td>
                <a href="group/delete/${group.getId()}" class="btn btn-danger">❌</a>||
                <a href="group/update/${group.getId()}" class="btn btn-warning">✏</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
