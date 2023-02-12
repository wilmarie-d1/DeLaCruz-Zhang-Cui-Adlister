
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/stylesheet.html" %>
    <jsp:include page="/head.jsp">
        <jsp:param name="title" value="Create New Ad"/>
    </jsp:include>
</head>
<body>

<jsp:include page="../navbar.jsp"/>

<div class="bg-create">
    <div class="container">
        <div>
            <h1 class="create-header">Create a new <span class="ads-l">AD</span> below...</h1>
        </div>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <input id="title" name="title" class="form-control" placeholder="Title" type="text">
            </div>
            <div class="form-group">
                <textarea id="description" name="description" class="form-control" placeholder="Description"></textarea>
            </div>
            <div class="form-group create-check">

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="1" name="category" value="1">
                    <label class="form-check-label" for="1">Sport</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="2" name="category" value="2">
                    <label class="form-check-label" for="2">Gun</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="3" name="category" value="3">
                    <label class="form-check-label" for="3">Food</label>
                </div>
            </div>

            <button type="submit" name="createAd" id="createAd" class="btn create-btn btn-block"
            >Create-Ad
            </button>

        </form>
    </div>

</div>

</body>
</html>