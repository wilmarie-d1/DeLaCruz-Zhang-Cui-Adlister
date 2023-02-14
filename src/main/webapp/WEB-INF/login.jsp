<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        .bg-image {
            background-image: url("https://viajes.nationalgeographic.com.es/medio/2014/10/17/awl_fvg005505_1000x666.jpg");
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
            border: 5px solid black;
            position: center;
            margin-top: 200px;

        }
    </style>
</head>
<body>


<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="bg-image">
<div class="container">
    <h1>Please Log In</h1>
    <c:if test="${invalidAttempt == false}">
        <p>Login Invalid! Please try again!</p>
    </c:if>

    <form action="/login" method="POST">

        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="<c:out value="${newName}"/>">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</div>
</body>
</html>