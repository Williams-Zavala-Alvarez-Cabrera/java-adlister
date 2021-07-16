<%--
  Created by IntelliJ IDEA.
  User: evanwilliams
  Date: 7/16/21
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${ad.title}</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Single Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="col-md-6 justify-content-center">
        <h1> Title: ${singleAd.title} </h1>
        <h3> Description: ${singleAd.description}</h3>
    </div>
</div>
</body>
</html>
