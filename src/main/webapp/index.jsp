<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <link href="WEB-INF/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="bg-image">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome to The Great Garden!</h1>
</div>
<div class="bg-video-wrap">
    <video src="/WEB-INF/css/Forest%20-%2049981.mp4" width="100"  loop muted autoplay></video>
</div>
</div>
</body>
</html>