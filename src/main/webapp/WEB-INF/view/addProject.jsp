<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.AttributeNames" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<style><%@include file="/WEB-INF/styles/login-style.css"%></style>
<html>
<head>
    <title>Relaty
    </title>
</head>
<body>
    <nav class="navigation">
              <div class="logo">
                <h4>Relaty</h4>
              </div>
              <ul class="nav-links">
                <li>
                  <c:url var="homeUrl" value="${Mappings.HOME}"/>
                  <a href="${homeUrl}">Home</a>
                </li>
                <li>
                    <c:url var="projectsUrl" value="${Mappings.PROJECTS}"/>
                    <a href="${projectsUrl}">Back To Projects List</a>
                </li>
              </ul>
        </nav>
    <div class="form">
        <form:form method="POST" modelAttribute="${AttributeNames.PROJECT_ITEM}">
        <label for="fname">Project name:</label><br>
        <form:input type="text" path="name" id="fname" value=""/><br>
        <label for="lname">Employee:</label><br>
        <form:input type="text" path="employee" id="lname" value=""/><br><br>
        <input class="submit" type="submit" value="Submit">
        </form:form>
    </div>
    <footer>
        <p>All Rights Reserved | 2020 </p>
    </footer>
</body>
</html>