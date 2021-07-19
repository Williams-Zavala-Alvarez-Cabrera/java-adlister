<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />


    <div class="container">
        <div class="welcome-container">
<%--            <iframe width="110" height="200" src="https://www.myinstants.com/instant/la-cucaracha-car-horn-51677/embed/" frameborder="0" scrolling="no"></iframe>--%>
            <div class="content2">
            <img class="big-logo1" src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/Logo/Logo-resized.png" alt="logo"/>
            </div>
        <div class="content1">
            <br>
            <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/ppl-eating-ft.jpeg">
        <h1>Welcome to the Food Truck Ad-lister!</h1>
            <p>This is a website where you can do the following: </p>
            <ul class="welcome-list">
                <li>Look for Existing Food Trucks by category</li>
                <li>Buy a used Food Truck</li>
                <li>Sell a used Food Truck </li>
                <li>Browse Food Truck Photos</li>
                <li>Read a little history on the origin of Food Trucks</li>
            </ul>
<%--            <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/GiovannisShrimpFT.jpeg" alt="shrimp truck"/>--%>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid cum cumque dignissimos dolore et explicabo,<br> laboriosam libero molestiae natus perspiciatis ratione repellat, sunt? Architecto blanditiis consectetur magnam odit provident veniam.</p>
        </div>
        </div>
    </div>
</body>
</html>
