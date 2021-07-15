<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body class="container">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <div>
        <h2>Profile info</h2>
        <ul id="profile-container">
            <li>Username:</li>
            <li>Email:</li>
            <li>Password:</li>
        </ul>
    </div>

</body>
</html>
