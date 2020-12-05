<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<style><%@include file="/WEB-INF/styles/list-style.css"%></style>
<html>
<head>
    <title>Relaty</title>
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
            <c:url var="addUrl" value="${Mappings.ADD_EMPLOYEE}"/>
            <a href="${addUrl}">Add New Employee</a></li>
          </ul>
    </nav>
    <div class="wrapper">
        <table class="table">
        <caption class="caption"><h2>Employee List</h2></caption>
            <tr class="row header">
                <th class="cell">
                    Name
                </th>
                <th class="cell">
                    Surname
                </th>
                <th class="cell">
                    Job Position
                </th>
                <th class="cell">
                    Edit
                </th>
                <th class="cell">
                    View
                </th>
                <th class="cell">
                    Delete
                </th>
            </tr>
            <c:forEach var="employee" items="${employeeData.items}">
            <c:url var="deleteUrl" value="${Mappings.DELETE_EMPLOYEE}">
                <c:param name="id" value="${employee.id}"/>
            </c:url>

            <c:url var="editUrl" value="${Mappings.ADD_EMPLOYEE}">
                <c:param name="id" value="${employee.id}"/>
            </c:url>

            <c:url var="viewUrl" value="${Mappings.VIEW_EMPLOYEE}">
                <c:param name="id" value="${employee.id}"/>
            </c:url>
            <tr class="row">
                <td class="cell" data-title="Name">
                    <c:out value="${employee.name}"/>
                </td>
                <td class="cell" data-title="Age">
                    <c:out value="${employee.surname}"/>
                </td>
                <td class="cell" data-title="Occupation">
                    <c:out value="${employee.jobTitle}"/>
                </td>
                <td class="cell" data-title="Location">
                    <a class="edit" href="${editUrl}">Edit</a>
                </td>
                <td class="cell" data-title="Location">
                    <a class="view" href="${viewUrl}">View</a>
                </td>
                <td class="cell" data-title="Location">
                    <a class="delete" href="${deleteUrl}">Delete</a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <footer>
        <p>All Rights Reserved | 2020 </p>
    </footer>
</body>
</html>
