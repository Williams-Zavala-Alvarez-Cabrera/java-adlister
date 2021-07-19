<%--
  Created by IntelliJ IDEA.
  User: evanwilliams
  Date: 7/15/21
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <form action="/ads/edit" method="post">
<%--        Hidden input using updated ad object as input value--%>
        <input type="hidden" name="adToUpdate" value="${updatedAd}">
        <div class="col-md-6 justify-content-center form-group">
            <h1>Edit Ad</h1>
            <label for="title"> Title: </label>
            <br>
            <input id="title" type="text" name="title" value="${existingTitle}">
            <div class="form-group">
                <label for="description"> Description: </label>
                <br>
                <input id="description" type="text" name="description" value="${existingDescription}">
                <br>
                <button>Save</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
