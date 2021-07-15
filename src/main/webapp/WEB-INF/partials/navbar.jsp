<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <form action="/search" method="post" style="float: left; margin-top: 1em">
                <input type="text" name="query" placeholder="Ad Search">
                <button>Go!</button>
            </form>
<%--            <li><a href="/login">Login</a></li>--%>
<%--            <li><a href="/logout">Logout</a></li>--%>
            <c:choose>
                <c:when test= "${sessionScope.user == null}">
                    <li><a href="/login">Login</a></li>
                    <li><a href="/register">Register</a></li>

                </c:when>
                <c:otherwise>
                    <li><a href="/ads/create">Create Ad</a></li>
                    <li><a href="/profile">Profile</a></li>
                    <li><a href="/logout">Logout</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
