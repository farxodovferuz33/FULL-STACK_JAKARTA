<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Page Group</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body style="background-color: gainsboro">
<br><br><br>
<div class="container my-5">
    <form method="post">
        <div class="mb-3">
            <label for="name" class="form-label"><h1 style="color: cadetblue">Update Name of Group</h1></label>
            <input value="${gr.getName()}" type="text" class="form-control" name="name" id="name"
                   aria-describedby="emailHelp" placeholder="e.g Football">
        </div>
        <button type="submit" class="btn btn-success">Update group</button>
        <a href="${pageContext.request.contextPath}/group" class="btn btn-primary">Back</a>
    </form>
    <br><br><br>
    <h4 style="color: green; text-align: center">You can change only name, you cannot change it is ID because it is generated
        <br>
    and f_key for student
    </h4>
</div>


</body>
</html>
