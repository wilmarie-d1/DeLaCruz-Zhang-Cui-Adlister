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
                    <a class="navbar-brand" href="/ads">Garden of Eden</a>
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
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ads">Garden of Eden</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/ads/create" class="nav">Create Ad</a></li>
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

