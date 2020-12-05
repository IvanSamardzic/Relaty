<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.AttributeNames" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<style><%@include file="/WEB-INF/styles/add-style.css"%></style>
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
                    <a href="${projectsUrl}">Back To List</a>
                </li>
              </ul>
        </nav>
    <div class='bold-line form'></div>
        <div class='container form'>
        <form:form method="POST" modelAttribute="${AttributeNames.PROJECT_ITEM}">
                  <div class='window form'>
                        <div class='overlay form'></div>
                        <div class='content form'>
                            <div class='input-word form'>Add New Project</div>
                            <div class='subtitle form'></div>
                            <div class='input-fields'>
                                <label for="fname">Project Name:</label><br>
                                <form:input class="input-line" type="text" path="name" id="fname" value=""/><br><br>
                                <label for="fname">Project Manager:</label><br>
                                <form:input class="input-line" type="text" path="employee" id="fname" value=""/><br><br>
                            </div>
                        <button class='ghost-round full-width' class="submit" type="submit" value="Submit">Login</button>
                        </div>
                  </div>
        </form:form>
        </div>
    <footer>
        <p>All Rights Reserved | 2020 </p>
    </footer>
</body>
</html>