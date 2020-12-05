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
                    <c:url var="addProject" value="${Mappings.ADD_PROJECT}"/>
                    <a href="${addProject}">Add New Project</a>
          </ul>
    </nav>
    <div class="wrapper">
        <table class="table">
            <caption class="caption">
                <h2>Projects List</h2>
            <tr class="row header">
            <th class="cell">
                Name
            </th>
            <th class="cell">
                Project Manager
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
            </caption>
            <c:forEach var="project" items="${projectData.items}">

            <c:url var="deleteUrl" value="${Mappings.DELETE_PROJECT}">
                <c:param name="id" value="${project.id}"/>
            </c:url>

            <c:url var="editUrl" value="${Mappings.ADD_PROJECT}">
                <c:param name="id" value="${project.id}"/>
            </c:url>

            <c:url var="viewUrl" value="${Mappings.VIEW_PROJECT}">
                <c:param name="id" value="${project.id}"/>
            </c:url>

            <tr class="row">
                <td class="cell" data-title="Name">
                    <c:out value="${project.name}"/>
                </td>
                <td class="cell" data-title="Age">
                    <c:out value="${project.employee}"/>
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
