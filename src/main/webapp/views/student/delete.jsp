<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Page Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: #ff8484">

<div class="container my-5">
    <form method="post">
        <div class="alert alert-danger">
            <h1>Are you sure want to delete this student name:
                ${st.getFullName()} </h1>
        </div>
        <a href="${pageContext.request.contextPath}/student" class="btn btn-warning">Back</a>
        <button type="submit" class="btn btn-danger">Confirm</button>
    </form>
</div>
</body>
</html>
