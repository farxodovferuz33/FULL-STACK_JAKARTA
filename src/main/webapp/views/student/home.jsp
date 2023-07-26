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
    <title>Home Page STUDENT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<h1>This is page of STUDENT MAIN PAGE</h1>
<a href="student/add" class="btn btn-success">Add New Student </a>
<a href="${pageContext.request.contextPath}/" class="btn btn-primary">Back</a>
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


</body>
</html>
