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
    <link rel="stylesheet" href="css/style.css">

    <title> Dojo Survey</title>
</head>
<body>
<div class="container">
    <form method="POST" action="/process">
        <h3>Dojo Survey</h3>
        <label>
            <p>Your Name:</p>
            <input type="text" name="name" placeholder="Name here...">
        </label><br>
        <label>
            <p>Location:</p>
            <select name="location">
                <option value="San Francisco, CA">San Francisco, CA</option>
                <option value="Seattle, WA">Seattle, WA</option>
                <option value="New York, NY">New York, NY</option>
                <option value="Washington, DC">Washington, DC</option>
            </select>
        </label><br>
        <label>
            <p>Favourite Language:</p>
            <select name="language">
                <option value="Python">Python</option>
                <option value="C++">C++</option>
                <option value="JavaScript">JavaScript</option>
                <option value="Java">Java</option>
                <option value="Other">Other</option>
            </select>
        </label><br>
        <label>
            <p>Comment (optional):</p>
            <textarea name="comment" placeholder="Comment here..."></textarea>
        </label><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
