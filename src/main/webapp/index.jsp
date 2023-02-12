<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="stylesheet.html" %>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Welcome to Ad-lister!" /></jsp:include>
</head>
<body>

<div class="bg">
    <div class="container col">
        <p class="tagline">Ad-lister!</p>
        <div class="container">
            <form action="/login">
                <button type="submit" name="login" id="login" class="btn btn-block landing-btn">Login</button>
            </form>
            <form action="/register">
                <button type="submit" name="register" id="register" class="btn btn-block landing-btn">Register</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>