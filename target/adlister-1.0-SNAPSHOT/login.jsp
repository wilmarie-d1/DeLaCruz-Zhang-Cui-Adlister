<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="stylesheet.html" %>
    <%@include file="stylesheet.html" %>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>

<div class="bg-login">
    <div class="container">
        <div class="container">
            <img class="img-fluid brand" src="img/brand.png" alt="">
        </div>

        <form action="/login" method="POST">
            <div class="form-group">
                <input id="username" name="username" class="form-control" placeholder="Username" type="text">
            </div>
            <div class="form-group">
                <input id="password" name="password" class="form-control" placeholder="Password" type="password">
            </div>
            <input type="submit" class="btn btn-block login-btn" value="Log In">
        </form>
    </div>
</div>

</body>
</html>