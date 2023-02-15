<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<style>
    body {
        background-image: url("https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
        min-height: 100%;
        min-width: 1024px;
        background-repeat: no-repeat;
        background-size: cover;
        /* Set up proportionate scaling */
        width: 100%;
        height: auto;
    }
    .container {
        position: center;
        margin-top: 150px;
        background-color: seagreen;
        font-weight: bold;
        width: 680px;
        height: 320px;
        opacity: .95;
        font-family: 'Gambetta', serif;
        color: lightyellow;
        box-shadow: 10px 10px 8px white;


    }
    .container:hover {
        transform: translateY(-40px);
    }
</style>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Create New Post</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Title:</label>
            <input id="title" name="title" class="form-control" type="text" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea id="description" name="description" class="form-control" type="text" required></textarea>
        </div>
        <input type="submit" class="btn btn-secondary btn-block ">
    </form>
</div>
</body>
</html>