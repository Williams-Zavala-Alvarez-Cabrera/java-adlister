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

<main class="container-fluid d-flex">
    <div class="banner">
        <h1 id="welcomeUser">Welcome, ${sessionScope.username}!</h1>
    </div>
    <div class="masterContainer">
        <div id="adContainer" class="col-4">
                <div class="singleAdContainer card col-md-6">
                    <h1>Your Ads</h1>
                    <c:forEach var="ad" items="${ads}">
                    <div class="card-body">
                        <h2 class="card-title">${ad.title}</h2>
                        <p class="card-text">${ad.description}</p>
                        <div class="adButtonsContainer">
                                <%--Edit ad form--%>
                            <form  class="buttonForm" action="/ads/edit" method="get">
                                <button class="editButton">Edit Ad</button>
                                <input type="hidden" name="singleAd" value="${ad.id}">
                            </form>
                                <%--DELETE FORM--%>
                            <form class="buttonForm" action="/ads/delete" method="POST">
                                <button class="editButton">Delete Ad</button>
                                <%--hidden type of input with value of ad id--%>
                                <input type="hidden" name="singleAd" value="${ad.id}">
                            </form>
                                <%--Single ad form--%>
                            <form class="buttonForm" action="/ads/singleAd" method="get">
                                <button class="editButton">More Info</button>
                                <input type="hidden" name="singleAd" value="${ad.id}">
                            </form>
                        </div>
                    </div>
                    </c:forEach>
                </div>
        </div>
        <div class="profileContainer col-6">
            <h2 class="profileTitle">Profile Info</h2>
            <ul id="profileList" >
                <li><h3>Username: ${sessionScope.username}<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
                <li><h3>Email:  ${sessionScope.email}<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
                <li><h3>Password: *********<a class="editProfileButton badge bg-info" href="/profile/update/password" style="margin-left: 1em">Edit</a></h3></li>
            </ul>
        </div>
    </div>

</main>

</body>
</html>
