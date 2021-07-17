<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<%--    changed this to navbar2, orginally just navbar1--%>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

<main class="container d-flex">
    <div class="row">
        <h1>Welcome, ${sessionScope.username}!</h1>
    </div>
    <div class="d-flex row flex-row">
        <div id="adContainer" class="col-5">
            <h2>Your ads</h2>
            <c:forEach var="ad" items="${ads}">

                <div class="container d-flex col-md-6">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <div class="adButtonsContainer row">
                            <%--        DELETE FORM--%>
                        <form class="col-4" action="/ads/delete" method="POST">
                            <button class="col">Delete Ad</button>
                                <%--                    hidden type of input with value of ad id--%>
                            <input type="hidden" name="singleAd" value="${ad.id}">
                        </form>

                            <%--        Edit ad form--%>
                        <form  class="col-4" action="/ads/edit" method="get">
                            <button class="col">Edit Ad</button>
                            <input type="hidden" name="singleAd" value="${ad.id}">
                        </form>

                            <%--        Single ad form--%>
                        <form class="col-4" action="/ads/singleAd" method="get">

                            <button class="col">Go to ad page</button>
                            <input type="hidden" name="singleAd" value="${ad.id}">
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="col-3 justify-content-end">
            <h2>Profile info</h2>
            <ul id="profile-container" >
                <li><h3>Username: ${sessionScope.username}<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
                <li><h3>Email:  ${sessionScope.email}<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
                <li><h3>Password: *********<a class="editProfileButton badge bg-info" href="/profile/update/password" style="margin-left: 1em">Edit</a></h3></li>
            </ul>
        </div>
    </div>

</main>

</body>
</html>
