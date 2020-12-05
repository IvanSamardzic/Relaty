<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.AttributeNames" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<style><%@include file="/WEB-INF/styles/view-style.css"%></style>
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
                 <a href="${projectsUrl}">Back To Project List</a>
              </li>
              </ul>
        </nav>
    <div align="center">
        <table>
            <tr>
                <th class="details">Project Details</th>
            </tr>
            <tr>
                <td class="cell label"><label>Project Name:</label></td><br>
                <td class="cell"><c:out value="${projectItem.name}"/></td>
            </tr>

            <tr>
                <td class="cell label"><label>Project Manager:</label></td><br>
                <td class="cell"><c:out value="${projectItem.employee}"/></td>
            </tr>

        </table>
    </div>
    <footer>
        <p>All Rights Reserved | 2020 </p>
    </footer>
</body>
</html>