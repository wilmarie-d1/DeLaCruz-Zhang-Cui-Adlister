<%--
  Created by IntelliJ IDEA.
  User: cui
  Date: 2/12/23
  Time: 12:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="/stylesheet.html" %>
    <jsp:include page="/head.jsp">
        <jsp:param name="title" value="Ad Details"/>
    </jsp:include>
</head>
<body>

<jsp:include page="/navbar.jsp"/>

<div class="bg-detail">
    <div class="container">
        <h2 class="detail-title">${ad.title}</h2>
        <div class="container m-3">
            <h5 class="detail-more">Ad-lister: <c:out value="${userId.username}" /></h5>
            <p class="detail-more">${ad.description}</p>
        </div>
    </div>
</div>


</body>
</html>
