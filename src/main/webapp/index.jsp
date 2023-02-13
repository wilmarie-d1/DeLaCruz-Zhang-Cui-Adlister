<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<style>
    body {
        background-color: lightblue;
    }
</style>
<div class="container">
    <h1>Welcome Ad-lister!</h1>
    <img src="billboards-adc.jpeg" alt="Your ads here PLEASE!" height="500" width="1000">
</div>
</body>
</html>