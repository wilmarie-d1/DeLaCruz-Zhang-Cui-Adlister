<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit an ad" />
  </jsp:include>
  <style>
  .container:before {
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
  .bg-img {
    background-image: url("https://www.pixelstalk.net/wp-content/uploads/2016/06/Underwater-Wallpaper-Free-Download-Beautiful.jpg");
    min-height: 100%;
    min-width: 1024px;
    background-repeat: no-repeat;
    background-size: cover;
    width: 100%;
    height: auto;
    position: fixed;

  }
  .container:after {
    color: orangered;
    background: tan;
    box-shadow: 10px 10px 8px lavenderblush;
    opacity: .9;
    border-radius: 20px;
    margin: 5px;  }
  </style>
</head>
<body>

<style>
  body {
    background-color: lightblue;
  }
</style>

<div class="bg-img">

<div class="bg-img">

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <h1>Howdy, ${user.username}! </h1>
 <h1>  Edit your post below: </h1>
  <form method="POST" action="/editAd">
    <div>
      <label  for="newTitle">Title</label>
      <input type="text" id="newTitle" style="width: 400px" height="150px" name="title" value="${myAd.title}" required>
    </div>
    <div>
      <label for="newDescription">Description</label>
      <input type="text" id="newDescription" name="description" style="width: 600px" height="250px" value="${myAd.description}" required>
      <input type="hidden" name="adId" value="${myAd.id}">
    </div>
    <input type="submit" class="btn btn-block btn-primary">
  </form>
</div>
</div>
</body>
</html>
