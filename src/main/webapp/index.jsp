<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="The Source of Life"/>
    </jsp:include>
<style>
    @import url("https://fonts.googleapis.com/css?family=Sigmar+One");
   body {
       background-image: url("https://wallpaperaccess.com/full/1441299.jpg");
       min-height: 100%;
       min-width: 1024px;
       background-repeat: no-repeat;
       background-size: cover;
       width: 100%;
       height: auto;
       position: center;
   }

    body:hover {
          box-shadow: 0 0 0 5px inset, 0 0 5px grey, 0 0 10px grey inset;
            transition: box-shadow 1s;
    }
    body:hover::after {
        opacity: 0;
        transition: opacity .5s;
    }
    body::after {
        content: 'The Garden of Eden';
    }


    h1 {
        margin-top: 250px;
        font-size: 120px;
        text-transform: uppercase;
        font-family: 'Gambetta', serif;
        letter-spacing: -3px;
        transition: 800ms ease;
        font-variation-settings: "wght" 311;
        margin-bottom: 0.8rem;
        color: PaleGoldenRod;
        outline: none;
        text-align: center;
    }

    h1:hover {
        font-variation-settings: "wght" 582;
        letter-spacing: 3px;
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