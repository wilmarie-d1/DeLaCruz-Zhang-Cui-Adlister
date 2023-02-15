<%--
  Created by IntelliJ IDEA.
  User: cui
  Date: 2/12/23
  Time: 12:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    body {
        background-image: url("https://wallpaperset.com/w/full/5/9/7/237896.jpg");
        min-height: 100%;
        min-width: 1024px;
        background-repeat: no-repeat;
        background-size: cover;
        /* Set up proportionate scaling */
        width: 100%;
        height: auto;
    }

</style>
<form method="post">
    <label for="date">Sort by:</label>
    <select name="date" id="date">
        <option value="newToOld">Newest to Oldest</option>
        <option value="oldToNew">Oldest to Newest</option>
    </select>
    <br>
    <input type="submit" value="Sort" name="filter">

</form>
</body>
</html>
