<%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/7/2021
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>You have visited <c:out value="${ count }"/> Times</h1>
<a href="/">Test another visit?</a>
<a href="/reset"><button>Reset Session</button></a>
</body>
</html>
