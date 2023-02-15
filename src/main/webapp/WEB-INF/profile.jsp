<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        .col-md-6 {
            color: ghostwhite;
            background: lightblue;
            box-shadow: 10px 10px 8px lavenderblush;
            opacity: .9;
            border-radius: 20px;
            margin: 5px;
            width: 340px;
        }
        h1 {
            color: white;
        }
        .edit-user {
            border: white solid;
            background-color: lightpink;
            margin: 5px;
            width: 400px;
            height: 270px;
            float: left;
            border-radius: 20px;
            color: midnightblue;
            list-style: none;

        }
        .col-md-6:hover {
            transform: translateY(-40px);
        }
        .edit-user>ul>li {
            list-style: none;
        }
        .edit-user:hover {
            transform: translateY(-40px);
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${user.username}!</h1>



    <div style="text-align: right">
        <jsp:include page="/WEB-INF/partials/filter.jsp" />
    </div>

    <h1>Here are all of your nature post</h1>


    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/adDetails?adId=${ad.id}">${ad.title}</a></h2>
            <h3> ${ad.description}</h3>
            <p>${ad.date_created}</p>

            <form action="/delete" method="POST">
                <input type="hidden" name="deleteAd" id="deleteAd" value="${ad.id}" />
                <button  class="btn btn-danger" type="submit">Delete</button>
            </form>
            <form method="GET" action="/editAd?adId=${ad.id}" >
                <input type="hidden" value="${ad.id}" name="adId" id="ad-id">
                <button class="btn btn-success" type="submit">Edit</button>
            </form>
        </div>
    </c:forEach>

    <div class="edit-user " style="margin-left: 160px">
        <h2 style="margin-left: 80px">Edit your profile</h2>
        <form action="/profile" method="post">
            <ul>
            <li><label for="newUsername">New Username: </label></li>
            <input name="newUsername" id="newUsername" value="${user.username}">
           <li> <label for="newPassword">New Password: </label></li>
            <input name="newPassword" id="newPassword" value="${user.password}">
            <input name="userId" id="userId" value="${user.id}" type="hidden">
            <li><input type="submit" value="Submit" name="userEdit"></li>
            </ul>
        </form>
    </div>


    </div>

</body>
</html>
