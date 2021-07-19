<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




 <nav class="navbar navbar-dark bg-primary" style="background-color: #0E0A04;">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
<%--            optional feature if time permits. way to link button to an amazon page. --%>
<%--    <iframe class="horn" width="115" height="110" src="https://www.myinstants.com/instant/la-cucaracha-car-horn-51677/embed/" frameborder="0" scrolling="no"></iframe>--%>
        <img class="truck" src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/Logo/redLogo.jpeg" alt="logo"/>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <c:choose>
                <c:when test= "${sessionScope.user == null}">
                    <li class="nav_links"><a href="/">Home</a></li>
                    <li class="nav_links"><a href="/ads ">View Ads</a></li>
                    <li class="nav_links"><a href="/ads/create">Create Ad</a></li>
                    <li class="nav_links"><a href="/login">Login</a></li>
                    <li class="nav_links"><a href="/register">Register</a></li>
                </c:when>
                <c:otherwise>
                    <li class="nav_links"><a href="/">Home</a></li>
                    <li class="nav_links"><a href="/ads ">View Ads</a></li>
                    <li class="nav_links"><a href="/ads/create">Create Ad</a></li>
                    <li class="nav_links"><a href="/profile">Profile</a></li>
                    <li class="nav_links"><a href="/logout">Logout</a></li>
                </c:otherwise>
            </c:choose>
    <form action="/search" method="post" style="float: left; margin-top: 1em">
        <input type="text" name="query" placeholder="Ad Search">
        <%--                <button>Go!</button>--%>
        <button class="btn btn-primary">Go!</button>
    </form>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>