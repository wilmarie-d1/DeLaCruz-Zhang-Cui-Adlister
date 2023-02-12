<%--
  Created by IntelliJ IDEA.
  User: cui
  Date: 2/12/23
  Time: 12:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/22/21
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="../stylesheet.html" %>
  <jsp:include page="../head.jsp">
    <jsp:param name="title" value="edit Ad"/>
  </jsp:include>
</head>
<body>

<jsp:include page="../navbar.jsp" />

<div class="bg-edit">
  <div class="container">

    <h1 class="edit-header">Edits below:</h1>

    <form method="post" action="${pageContext.request.contextPath}/edit">
      <div class="form-group">
        <input id="title" class="form-control" placeholder="Enter New Title" name="new_title" type="text">
      </div>
      <div class="form-group">
        <input id="description" class="form-control" placeholder="Enter New Description" name="new_description"
               type="text">
      </div>
      <button type="submit" name="edit" class="btn pro-btn btn-block" value="${ad.id}">Save Changes</button>
    </form>

  </div>
</div>


</body>
</html>
