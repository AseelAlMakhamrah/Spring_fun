<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/7/2021
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ninja Gold</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id = "gold">
<p>Your Gold: <%= session.getAttribute("gold") %></p>
</div>
<div class="options">
    <div class="farm">
        <h3>Farm</h3>
        <p>(earns 10-20 gold)</p>
        <form action="/process/1" method="POST">
            <input type="submit" value="Find Gold!"/>
        </form>
    </div>
    <div class="cave">
        <h3>Cave</h3>
        <p>(earns 5-10 gold)</p>
        <form action="/process/2" method="POST">
            <input type="submit" value="Find Gold!"/>
        </form>
    </div>
    <div class="house">
        <h3>House</h3>
        <p>(earns 2-5 gold)</p>
        <form action="/process/3" method="POST">
            <input type="submit" value="Find Gold!"/>
        </form>
    </div>
    <div class="casino">
        <h3>Casino</h3>
        <p>(earns/takes 0-50 gold)</p>
        <form action="/process/4" method="POST">
            <input type="submit" value="Find Gold!"/>
        </form>
    </div>
</div>
<div id="activities">
    <p>Activities:</p>
    <div class="box">
        <ul>
            <% if(session.getAttribute("activities") != null){ %>
            <% ArrayList<String> action = (ArrayList<String>) session.getAttribute("activities"); %>
            <% for(int i = 0; i < action.size(); i++) { %>
            <% if(action.get(i).startsWith("F")) { %>
            <li style = "color: green;"><%= action.get(i) %></li>
            <% } else { %>
            <li style = "color: red;"><%= action.get(i) %></li>
            <% } %>
            <% } %>
            <% } %>
        </ul>
    </div>
</div>
<div class="reset">
    <a href="/reset"><button type="button" name="button" class = "reset">Reset</button></a>
</div>

</body>
</html>
