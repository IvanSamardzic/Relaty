<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.AttributeNames" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<style><%@include file="/WEB-INF/styles/style.css"%></style>
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
                  <c:url var="backUrl" value="${Mappings.EMPLOYEES}"/>
                  <a href="${backUrl}">Back To Employees List</a>
              </li>
              </ul>
        </nav>
    <div align="center">
        <table>
            <tr>
                <td class="label"><label>Name:</label></td><br>
                <td><c:out value="${employeeItem.name}"/></td>
            </tr>

            <tr>
                <td class="label"><label>Surname:</label></td><br>
                <td><c:out value="${employeeItem.surname}"/></td>
            </tr>

            <tr>
                <td class="label"><label>Job Title:</label></td><br>
                <td><c:out value="${employeeItem.jobTitle}"/></td>
            </tr>

            <tr>
                <td class="label"><label>Email:</label></td><br><br>
                <td><c:out value="${employeeItem.email}"/></td>
            </tr>

        </table>
    </div>
    <footer>
        <p>All Rights Reserved | 2020 </p>
    </footer>
</body>
</html>