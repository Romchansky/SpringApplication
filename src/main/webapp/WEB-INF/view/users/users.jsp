<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Application</title>
    <style>
        <%@include file="/WEB-INF/view/css/style.css" %>
    </style>
</head>
<body>
<c:import url="/WEB-INF/view/navibar.jsp"/>

<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">Email</th>
        <th scope="col">First name</th>
        <th scope="col">Last name</th>
        <th scope="col">Role</th>
        <security:authorize access="hasRole('ROLE_ADMIN')">
            <th scope="col" colspan="2"></th>
        </security:authorize>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td align="center"><b>${user.userEmail}</b></td>
            <td align="center"><b>${user.firstName}</b></td>
            <td align="center"><b>${user.lastName}</b></td>
            <td align="center"><b>${user.role.roleForDisplaying}</b></td>
            <security:authorize access="hasRole('ROLE_ADMIN')">
                <td align="center">
                    <a href="/users/form/update?email=${user.userEmail}">
                        <button class="btn btn-outline-info my-2 my-sm-0">Update</button>
                    </a>
                </td>
                <td align="center">
                    <a href="/users/delete?email=${user.userEmail}">
                        <button class="btn btn-outline-danger my-2 my-sm-0">Delete</button>
                    </a>
                </td>
            </security:authorize>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>