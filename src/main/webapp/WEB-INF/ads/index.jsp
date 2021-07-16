<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>


<%--    For each loop that builds each ad with Buttons--%>
    <c:forEach var="ad" items="${ads}">

        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>


<%--        DELETE FORM--%>
        <form action="/ads/delete" method="POST">
            <button>Delete Ad</button>
<%--                    hidden type of input with value of ad id--%>
            <input type="hidden" name="singleAd" value="${ad.id}">
        </form>

<%--        Edit ad form--%>
        <form action="/ads/edit" method="get">
            <button>Edit Ad</button>
            <input type="hidden" name="singleAd" value="${ad.id}">
        </form>

<%--        Single ad form--%>
        <form action="/ads/singleAd" method="get">

            <button>Go to ad page</button>
            <input type="hidden" name="singleAd" value="${ad.id}">
        </form>

    </c:forEach>


</div>

</body>
</html>
