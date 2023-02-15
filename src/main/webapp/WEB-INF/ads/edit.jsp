<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit an ad" />
  </jsp:include>
  <style>
  .container {
    color: ghostwhite;
    background: lightblue;
    box-shadow: 10px 10px 8px lavenderblush;
    opacity: .9;
    border-radius: 20px;
    margin: 5px;
  }
  .container:hover {
    transform: translateY(-40px);
  }
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <h1>Welcome, ${user.username}! Edit your post below: </h1>
  <form method="POST" action="/editAd">
    <div>
      <label  for="newTitle">Title</label>
      <input type="text" id="newTitle" name="title" value="${myAd.title}" required>
    </div>
    <div>
      <label for="newDescription">Description</label>
      <input type="text" id="newDescription" name="description" value="${myAd.description}" required>
      <input type="hidden" name="adId" value="${myAd.id}">
    </div>
    <input type="submit" class="btn btn-block btn-primary">
  </form>
</div>
</body>
</html>
