<%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/7/2021
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Code</title>
    <style>
        .container{
            margin: auto;
            text-align: center;
            margin-top: 40px;
            padding: 20px;
            border: 1px dashed grey;
            width: 400px;
        }
        h3{
            font: 100 20pt "Helvetica Neue", sans-serif;
        }
        input[type=text]{
            font: 100 15pt "Helvetica Neue", sans-serif;
        }
        button{
            font: 100 10pt "Helvetica Neue", sans-serif;
            padding: 5px 10px 5px 10px;
            margin-top: 10px;
        }
        .red{
            color: red;
            font: 100 10pt "Helvetica Neue", sans-serif;
        }
    </style>
</head>
<body>
<div class = "container">
    <h3>What is the code?</h3>
    <% if(session.getAttribute("result") == "incorrect") { %>
    <p class="red">You must train harder!</p>
    <% } %>
    <form method="POST" action="/process">
        <input type="text" name="code"></input><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
