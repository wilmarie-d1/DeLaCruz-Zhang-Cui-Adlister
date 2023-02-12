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
  <%@include file="/stylesheet.html" %>
  <jsp:include page="/head.jsp">
    <jsp:param name="title" value="Viewing All The Ads"/>
  </jsp:include>
</head>
<body>

<jsp:include page="/navbar.jsp"/>

<div class="bg-ads">
  <div>
    <h1 class="ads-header">Find the next <span class="ads-s">AD</span></h1>
  </div>
  <div>
    <div class="row md-6 justify-content-around">

      <c:forEach var="ad" items="${ads}">

          <div class="card-body">
            <div>
              <h5>${ad.title}</h5>
              <p>${ad.description}</p>
              <div class="col">
                <form action="/ads/detailed">
                  <button type="submit" name="id" id="id" class="btn card-btn btn-block"
                          value="${ad.id}">
                    View
                    More
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>

    </div>
</div>

</body>
</html>
