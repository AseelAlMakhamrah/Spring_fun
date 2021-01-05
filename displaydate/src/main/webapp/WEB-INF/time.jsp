<%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/5/2021
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/time.js"></script>
    <title>Title</title>
</head>
<body>
<div id="container">
    <h1 id="outputtime"><c:out value="${date}"/></h1>
</div>
</body>
</html>
