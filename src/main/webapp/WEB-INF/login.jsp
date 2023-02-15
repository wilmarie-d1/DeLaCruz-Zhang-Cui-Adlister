<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Log In" />
    </jsp:include>
    <style>
        body {
            background-image: url("https://www.pixel4k.com/wp-content/uploads/2020/11/spring-waterfall-stone-fog-mist-green-forest-4k_1606595561-2048x871.jpg.webp");
            min-height: 100%;
            min-width: 1024px;
            background-repeat: no-repeat;
            background-size: cover;
            /* Set up proportionate scaling */
            width: 100%;
            height: auto;

            /* Set up positioning */
            position: fixed;
        }
        .container {
            border: 3px dot-dash black ;
            position: center;
            margin-top: 200px;
            background-color: darkolivegreen ;
            width: 650px;
            height: 350px;
            opacity: .9;
            box-shadow: 10px 10px 8px lightgray;
            font-family: 'Noto Sans Old South Arabian';
            color: darkgoldenrod;
            font-size: 20px;

        }

    </style>
</head>
<body>


<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="bg-image">
<div class="container">
    <h1 style="margin-left: 260px">Sign In</h1>
    <c:if test="${invalidAttempt == false}">
        <p>Login Invalid! Please try again!</p>
    </c:if>

    <form action="/login" method="POST">

        <div class="form-group">
            <label for="username">Username:</label>
            <input id="username" name="username" class="form-control" style="font-size: 20px" type="text" value="<c:out value="${newName}"/>">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" name="password"  style="font-size: 20px" class="form-control" type="password">
        </div>
        <label>
            <input type="checkbox" style="position: center" checked="checked" name="remember"> Remember me
        </label>
        <input type="submit" class="btn btn-dark btn-block"  value="Log In">


    </form>
</div>
</div>
</body>
</html>