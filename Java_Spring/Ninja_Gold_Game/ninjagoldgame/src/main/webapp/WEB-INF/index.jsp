<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <div class="header">
        <h3>Your Gold : <span><c:out value="${gold}"></c:out></span></h3>
        <form action="/reset" method="post">
            <input type="submit" name="reset" id="button" value="reset">
        </form>
        </div>
        <div class="activity">
            
            <form class="quest" action="/quest" method="post">

                <h2>Farm</h2>
                <p>Earns ( 10 - 20 ) Gold Coins</p>
                <input type="submit" name="farm" id="button" value="Find Gold">
                <input type="hidden" name="whichForm" value="farm">

            </form>

            <form class="quest" action="/quest" method="post">
 
                <h2>Cave</h2>
                <p>Earns ( 10 - 20 ) Gold Coins</p>
                <input type="submit" name="Cave" id="button" value="Find Gold">
                <input type="hidden" name="whichForm" value="cave">
            </form>

            <form class="quest" action="/quest" method="post">

                <h2>House</h2>
                <p>Earns ( 10 - 20 ) Gold Coins</p>
                <input type="submit" name="House" id="button" value="Find Gold">
                <input type="hidden" name="whichForm" value="house">
            </form>

            <form class="quest" action="/quest" method="post">

                <h2>Quest</h2>
                <p>Earns/Takes ( 0 - 50 ) Gold Coins</p>
                <input type="submit" name="Quest" id="button" value="Find Gold">
                <input type="hidden" name="whichForm" value="quest">
            </form>


        </div>
        <div class="log">
            <h2>activities:</h2>
            <div>
            <c:forEach var="message" items="${log}">
            
            <p><c:out value="${message}"></c:out></p>
            
            </c:forEach>
            </div>

        </div>
    </div>
    
</body>
</html>