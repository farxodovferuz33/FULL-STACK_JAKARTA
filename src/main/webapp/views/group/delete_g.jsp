<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Page Group</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: #fd8181">
<br><br><br>
<div class="container my-5">
    <form method="post">
        <div class="alert alert-danger">
            <h1>Are you sure want to delete this group name:
                ${gr.getName()} </h1>
        </div>
        <button type="submit" class="btn btn-danger">Confirm</button>
        <a href="${pageContext.request.contextPath}/group" class="btn btn-warning">Back</a>
    </form>
    <br><br>
    <br><br>
    <br><br>
    <h4 style="color: yellow">Warning ❌: YOU CANNOT DELETE THIS GROUP IF IT HAS STUDENTS IN THIS GROUP</h4>
    <h4 style="color: green">Hint ❗: You can delete students first to delete group</h4>
</div>

</body>
</html>
