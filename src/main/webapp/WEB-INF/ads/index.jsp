<%--
  Created by IntelliJ IDEA.
  User: cui
  Date: 2/12/23
  Time: 12:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Viewing All The Ads" />
  </jsp:include>
  <style>
    h1 {
      color: ghostwhite;
    }
    .col-md-6{
      color: ghostwhite;
      background: lightblue;
      box-shadow: 10px 10px 8px lavenderblush;
      opacity: .9;
      border-radius: 20px;


    }


  </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
  <h1>Nature Posts</h1>
  <div style="text-align: right">
    <jsp:include page="/WEB-INF/partials/filter.jsp" />
  </div>

  <c:forEach var="ad" items="${ads}">
    <div class="col-md-6">
      <h2><a href="/adDetails?adId=${ad.id}">${ad.title}</a></h2>
      <p>${ad.description}</p>
      <p>Date Created: ${ad.date_created}</p>

  </div>
  </c:forEach>
</div>

</body>
</html>

