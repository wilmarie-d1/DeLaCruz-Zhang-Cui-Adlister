<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="The Source of Life"/>
    </jsp:include>
<style>
   body{
    background-image: url("https://wallpaperaccess.com/full/1441299.jpg");
    min-height: 100%;
    min-width: 1024px;
    background-repeat: no-repeat;
    background-size: cover;
    width: 100%;
    height: auto;
    position: center;
    }

     h1 {
         color: yellow;
     }
</style>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <h1>Welcome to The Garden of Eden!</h1>

    <div>
    </div>
</div>
</body>
</html>