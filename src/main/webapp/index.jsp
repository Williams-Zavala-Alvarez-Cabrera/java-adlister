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

    <div id="horn">
                <%--            optional feature if time permits. way to link button to an amazon page. --%>
                    <iframe class="horn" width="115" height="110" src="https://www.myinstants.com/instant/la-cucaracha-car-horn-51677/embed/" frameborder="0" scrolling="no"></iframe>
            </div>
        <div class="content1">
            <h1>Your All-In-One site for the love of Food Trucks!</h1>
            <p class="home-intro">Who doesn't love food trucks? The Food Truck Ad-lister allows you to search for food trucks in your city, different types of cuisine, from traditional taco truck to gourmet lobster truck!  You can also place an ad to promote a food truck as well as place ads to buy or sell a food truck! Click to see the most latest food truck ads <a class="here" href="/ads ">here!</a></p>
            <img class="main-pic" src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/FTppl.png">
            <br>
            <br>
            <h2 style="font-weight: bold">Browse Food Trucks</h2>
            <p class="home-intro">To see all types of cuisine and price ranges between food trucks,  click <a class="here" href="#">here!</a></p>
            <div class="row">
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/britishFT.jpeg" alt="Snow" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/IndianFT.jpeg" alt="missle" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/CakeFT.jpeg" alt="Taco Ambulance" style="width:100%">
                </div>
            </div>
            <br>
            <h2 style="font-weight: bold">Unique Food Trucks</h2>
            <p class="home-intro">To see some unique food truck conversions from buses, ambulances, to missle launchers, click  click <a class="here" href="#">here!</a></p>
            <div class="row">
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/UniqueTrucks/SnowTractorFT.jpeg" alt="Snow" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/UniqueTrucks/missleLauncherFT.jpg" alt="missle" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/UniqueTrucks/AmbulanceFT.jpg" alt="Taco Ambulance" style="width:100%">
                </div>
            </div>
            <br>
            <h2 style="font-weight: bold">Catchy Food Trucks</h2>
            <p class="home-intro">Check out some tasty but funny named food trucks by clicking <a class="here" href="#">here!</a></p>
            <div class="row">
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FunnyTrucks/india-jonesFT.jpeg" alt="Snow" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FunnyTrucks/Blaxican2FT.png" alt="missle" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FunnyTrucks/YeastieBoysFT.png" alt="Taco Ambulance" style="width:100%">
                </div>
            </div>
            <h2 style="font-weight: bold">Food Trucks for Animals?</h2>
            <p class="home-intro">Yes, even pets have food trucks, click <a class="here" href="#">here!</a></p>
            <div class="row">
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/AnimalsFT/DogsFT.jpeg" alt="Snow" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/AnimalsFT/ElGatoFishTacosFT.jpeg" alt="missle" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/AnimalsFT/FoodTruckforCowsFT.jpeg" alt="Taco Ambulance" style="width:100%">
                </div>
            </div>
            <h2 style="font-weight: bold">Buy or Sell a Food Truck</h2>
            <p class="home-intro">For Ad listing on new and used food trucks for sale, click <a class="here" href="#">here!</a></p>
            <div class="row">
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FunnyTrucks/sketchyIceCreamFT.jpeg" alt="Snow" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/GiovannisShrimpFT.jpeg" alt="missle" style="width:100%">
                </div>
                <div class="column">
                    <img src="https://raw.githubusercontent.com/bennyalvarez/codeup-web-exercises/main/img/FoodTruckAdLister/FoodTrucksIndex/dioMuertosFT.jpeg" alt="Taco Ambulance" style="width:100%">
                </div>
            </div>






        </div>
        </div>
    </div>
</body>
</html>
