<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<%@ page import="academy.learnprogramming.util.AttributeNames" %>
<style><%@include file="/WEB-INF/styles/login-style.css"%></style>

<html>
<head>
    <title>Relaty-Home Page</title>
</head>

<body>
    <nav class="navigation">
          <div class="logo">
            <h4>Relaty</h4>
          </div>
          <ul class="nav-links">
            <li>
                <c:url var="employeesLink" value="${Mappings.EMPLOYEES}"/>
                <a href="${employeesLink}" class='href-links'>Show Employees</a>
            </li>
            <li>
                <c:url var="projectsLink" value="${Mappings.PROJECTS}"/>
                <a href="${projectsLink}" class='href-links'>Show Projects</a>
            </li>
          </ul>
    </nav>
    <div class='bold-line form'></div>
        <div class='container form'>
        <form:form method="POST" modelAttribute="${AttributeNames.EMPLOYEE_ITEM}">
                  <div class='window form'>
                        <div class='overlay form'></div>
                        <div class='content form'>
                            <div class='input-word form'>Welcome</div>
                            <div class='subtitle form'></div>
                            <div class='input-fields'>
                                <label for="fname">Email Address:</label><br>
                                <input class="input-line" type="text" path="email" id="fname" value=""></input><br><br>
                                <label for="fname">Password:</label><br>
                                <input class="input-line" type="text" path="password" id="fname" value=""/><br><br>
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
