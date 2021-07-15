<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

<main class="container">
    <div class="">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <div>
        <h2>Profile info</h2>
        <ul id="profile-container" >
            <li><h3>Username: ${sessionScope.user.username}<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
            <li><h3>Email:  ${sessionScope.user.email}<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
            <li><h3>Password: *********<a class="editProfileButton badge bg-info" href="/profile/edit" style="margin-left: 1em">Edit</a></h3></li>
        </ul>
    </div>
</main>

</body>
</html>
