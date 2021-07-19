<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
<%--    <link rel="stylesheet" href="css/styles.css"  type="text/css" />--%>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<%--<style>--%>
<%--    nav{--%>
<%--        background-color: hotpink;--%>
<%--    }--%>

<%--    body {--%>
<%--        background-color: lightskyblue;--%>
<%--    }--%>
<%--</style>--%>
<div class="container">



    <h1>Here Are all the ads!</h1>


<%--    For each loop that builds each ad with Buttons--%>
    <c:forEach var="ad" items="${ads}">

        <div class="container d-flex col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>


</div>

</body>
</html>
