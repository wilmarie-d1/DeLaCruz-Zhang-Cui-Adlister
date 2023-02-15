<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<style>
    body {
        background-image: url("https://images4.alphacoders.com/876/876272.jpg");
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
        border: 5px black;
        position: center;
        margin-top: 150px;
        background-color: lightpink;
        font-weight: bold;
        width: 680px;
        height: 620px;
        opacity: .9;
        box-shadow: 10px 10px 8px lavenderblush;
        font-family: '.AppleSystemUIFont';
        font-size: 20px;
        color: mediumpurple;

    }

    .container:hover {
        transform: translateY(-40px);
    }

</style><jsp:include page="partials/navbar.jsp" />
<div class="bg-image">

<div class="container">
    <h1 style="margin-left: 200px">User Registration </h1>
    <form action="/register" method="post">
        <c:if test="${invalidAttempt == true}">
            <p style="color: red">Registration Invalid! Existing username! Please make a different one</p>
        </c:if>
        <div class="form-group">
            <label for="username">Username:</label>
            <input id="username" name="username" class="form-control" type="text" placeholder="username">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input id="email" name="email" class="form-control" type="email">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" name="password" class="form-control" type="password"  placeholder="Be sure to make your password 7 characters or more" required minlength="7">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password:</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="zip_code">Zip Code:</label>
            <input id="zip_code" name="zip_code" class="form-control" type="number">
        </div>
        <div class="form-group">
            <label for="phone_number">Phone Number:</label>
            <input id="phone_number" name="phone_number" class="form-control" type="number">
        </div>

        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</div>
</body>
</html>
















