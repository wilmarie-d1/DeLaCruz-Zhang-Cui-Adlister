<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.getSession().getAttribute("user");%>


<style>

    div>a {
        font-size: 30px;
        color: yellow;
        font-family: Gambetta;
    }
    .nav {
    font-size: 18px;
        color: yellow;
        font-family: Gambetta;

    }
</style>
<c:choose>
    <c:when test="${user.username == null}">
        <nav class="navbar">
            <div class="container-fluid ">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ads">Adlister</a>
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-peace" viewBox="0 0 16 16">
                        <path d="M7.5 1.018a7 7 0 0 0-4.79 11.566L7.5 7.793V1.018zm1 0v6.775l4.79 4.79A7 7 0 0 0 8.5 1.018zm4.084 12.273L8.5 9.207v5.775a6.97 6.97 0 0 0 4.084-1.691zM7.5 14.982V9.207l-4.084 4.084A6.97 6.97 0 0 0 7.5 14.982zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
                    </svg>

                    <a class="navbar-brand" href="/ads">Garden of Eden</a>
.merge_file_p90o4n

                    <a class="navbar-brand" href="/ads">Garden of Eden</a> main
                </div>


                <form class="navbar-form navbar-right" action="/search">
                    <div class="form-group">
                        <input type="text" name="search" placeholder="Search all ads">
                    </div>
                    <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span>
                    </button>
                </form>
                    <%--  SEARCH --%>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/login" class="nav">Login</a></li>
                    <li><a href="/register" class="nav">Register</a></li>
                </ul>
            </div>
<%--            </div>--%>


        </nav>
    </c:when>

    <c:otherwise>
        <nav class="navbar">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ads">Garden of Eden</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/ads/create" class="nav">Create Post</a></li>
                    <li><a href="/profile" class="nav">Profile</a></li>
                    <li><a href="/logout" class="nav">Logout</a></li>
                    <li>
                        <form class="navbar-form navbar-right" action="/search">
                            <div class="form-group">
                                <input type="text" name="search" placeholder="Search all ads">
                            </div>
                            <button type="submit" class="btn btn-default"><span
                                    class="glyphicon glyphicon-search"></span></button>
                        </form>
                    </li>
                </ul>
            </div>
<%--            </div>--%>
        </nav>
    </c:otherwise>
</c:choose>

