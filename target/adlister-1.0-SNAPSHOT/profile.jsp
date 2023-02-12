<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="stylesheet.html" %>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>

    <title></title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="bg-pro">
    <div class="container pro-welcome">
        <h1>Hello, ${sessionScope.user.username}!</h1>
    </div>
    <div class="container">
        <div class="col">
            <form action="${pageContext.request.contextPath}/profile-edit">
                <button type="submit" name="editUser" id="editUser" class="btn pro-btn btn-block" value="${user.id}">Edit
                    Your Info
                </button>
            </form>
            <form action="${pageContext.request.contextPath}/ads/create">
                <button type="submit" name="create-ad" id="create-ad" class="btn pro-btn btn-block"
                        value="${user.id}">
                    Create a new Ad
                </button>
            </form>
        </div>
        <div class="row md-6 justify-content-around">

            <c:forEach var="ad" items="${ads}">

                <div class="card m-5 card-bg" style="width: 400px">
                    <img class="card-img-top" src="${pageContext.request.contextPath}" alt="profile image">
                    <div class="card-body">
                        <div>
                            <h5>${ad.title}</h5>
                            <p>${ad.description}</p>
                            <div class="col">
                                <form action="${pageContext.request.contextPath}/ads/detailed">
                                    <button type="submit" name="id" id="id" class="btn card-btn btn-block"
                                            value="${ad.id}">
                                        View
                                        More
                                    </button>
                                </form>
                                <form action="${pageContext.request.contextPath}/edit">
                                    <button type="submit" name="edit" id="edit" class="btn card-btn btn-block"
                                            value="${ad.id}">Edit
                                    </button>
                                </form>
                                <form action="${pageContext.request.contextPath}/deleteAd" method="post">
                                    <button type="submit" name="delete" id="delete" class="btn card-btn btn-block"
                                            value="${ad.id}">Delete
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

        </div>
    </div>
</div>
</body>
</html>