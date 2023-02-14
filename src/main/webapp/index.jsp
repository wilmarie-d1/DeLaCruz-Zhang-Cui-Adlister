<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
<style>
     .bg-img {
         background-image: url("https://elmundoviajes.com/wp-content/uploads/2022/07/primavera-krupaj-en-milanovac-serbia_5e03937f30c62.jpeg");
         min-height: 100%;
         min-width: 1024px;
         background-repeat: no-repeat;
         background-size: cover;
         width: 100%;
         height: auto;
         position: fixed;
     }
</style>

</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<body>
<div class="container">
    <h1>Welcome to The Garden of Eden!</h1>
    <div>
        <img src="" alt="pic" class="bg-img">
    </div>
</div>
</body>
</html>