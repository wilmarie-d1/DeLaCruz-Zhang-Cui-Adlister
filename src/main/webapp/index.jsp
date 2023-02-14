<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>


</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<body>
<div class="container">
    <h1>Welcome to The Garden of Eden!</h1>
    <div>
        <img src="https://pixabay.com/images/id-1072828/" alt="pic" style="width: 100px">
    </div>
</div>
</body>
</html>