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
<h1>Here Are all the ads!</h1>
<div id="adsPageContainer" class="container">
<%--    For each loop that builds each ad with Buttons--%>
    <c:forEach var="ad" items="${ads}">
    <div class="cardBodyAdsPage">
        <h2 class="card-title">${ad.title}</h2>
        <p class="card-text">${ad.description}</p>
    </div>
    </c:forEach>


</div>

</body>
</html>
