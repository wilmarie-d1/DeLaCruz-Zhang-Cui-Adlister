<%--
  Created by IntelliJ IDEA.
  User: cui
  Date: 2/12/23
  Time: 12:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="stylesheet.html" %>
    <jsp:include page="/head.jsp">
        <jsp:param name="title" value="Edit User"/>
    </jsp:include>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="bg-edit">
    <div class="container">
        <h1 class="edit-text-top">Update your information below...</h1>
        <h1 class="edit-text-btm">but please say you won't go!</h1>

        <form action="/profile-edit" method="post">
            <div class="form-group">
                <input id="username" name="username" class="form-control" placeholder="Username" type="text">
            </div>
            <div class="form-group">
                <input id="email" name="email" class="form-control" placeholder="Email" type="text">
            </div>
            <input type="submit" class="btn edit-btn btn-block">
        </form>
        <form action="/profile-delete" method="post">
            <button type="submit" name="deleteUser" id="deleteUser" class="btn edit-btn btn-block"
                    value="${user.id}">Delete your
                profile
            </button>
        </form>

    </div>
</div>


</body>
</html>
