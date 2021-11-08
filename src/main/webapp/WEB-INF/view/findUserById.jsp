<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>SpringApplication</title>
    <style>
        <%@include file="/WEB-INF/view/css/style.css" %>
    </style>
</head>
<body>
<c:import url="/WEB-INF/view/navigation.jsp"/>
<table cellpadding="5">
    <caption>
        <h2> Users </h2>
    </caption>
    <thead>
    <tr>
        <th align="left">User ID</th>
        <th align="left">User Firstname</th>
        <th align="left">User Lastname</th>
        <th align="left">User Email</th>
        <th align="left">User Role</th>
        <th align="left">User Status</th>
        <th align="left">User Password</th>
        <th colspan="2" align="center">Actions</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>${user.get().id}</td>
            <td>${user.get().firstName}</td>
            <td>${user.get().lastName}</td>
            <td>${user.get().email}</td>
            <td>${user.get().userRole}</td>
            <td>${user.get().userStatus}</td>
            <td>${user.get().password}</td>
            <td align="center">
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <a href="/user/delete?id=${user.get().id}">
                        <button>Delete</button>
                    </a>
                </security:authorize>
            </td>
            <td align="center">
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <a href="/user/form/update?id=${user.get().id}">
                        <button>Update</button>
                    </a>
                </security:authorize>
            </td>
        </tr>
    </tbody>
</table>
</body>
</html>