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
        <th scope="col">Name</th>
        <th scope="col" colspan="2"></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td align="center"><b>${manufacturer.manufacturerName}</b></td>
        <td align="center">
            <a href="/manufacturers/form/update?name=${manufacturer.manufacturerName}">
                <button class="btn btn-outline-info my-2 my-sm-0">Update</button>
            </a>
        </td>
        <td align="center">
            <a href="/manufacturers/delete?name=${manufacturer.manufacturerName}">
                <button class="btn btn-outline-danger my-2 my-sm-0">Delete</button>
            </a>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>