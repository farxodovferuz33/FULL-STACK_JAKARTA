<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Page Group</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: lightgrey">

<div class="container my-5">
    <form method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label"><h1 style="color: cadetblue">Enter Name of Group</h1></label>
            <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="e.g Football">
        </div>
        <button type="submit" class="btn btn-success">Add group</button>
        <a href="${pageContext.request.contextPath}/group" class="btn btn-primary">Back</a>
    </form>
</div>

</body>
</html>
