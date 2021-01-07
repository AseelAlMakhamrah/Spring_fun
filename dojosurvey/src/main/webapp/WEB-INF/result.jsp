<%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/7/2021
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/style1.css">
    <title> Dojo Survey</title>
</head>
<body>
<div class="container">
    <h3>Submitted Info</h3>
    <p><b>Name:</b> <%= session.getAttribute("name") %></p>
    <p><b>Location:</b> <%= session.getAttribute("location") %></p>
    <p><b>Favourite Language:</b> <%= session.getAttribute("language") %></p>
    <p><b>Comment:</b> <%= session.getAttribute("comment") %></p>
    <a href="/">Back</a>
</div>
</body>
</html>
