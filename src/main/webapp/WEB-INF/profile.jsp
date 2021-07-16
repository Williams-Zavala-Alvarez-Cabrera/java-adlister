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
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
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
