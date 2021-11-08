<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>SpringApplication</title>
    <style>
        <%@include file="/WEB-INF/view/css/style.css" %>
    </style>
</head>
<body>
<security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
    <c:import url="/WEB-INF/view/navibar.jsp"/>
</security:authorize>
</body>

<div class="error">
    <h1>Opps...</h1>
    <table width="100%" border="1">
        <tr valign="top">
            <td width="40%"><b>Error:</b></td>
            <td>${message}</td>
        </tr>

        <tr valign="top">
            <td><b>URI:</b></td>
            <td>${pageContext.errorData.requestURI}</td>
        </tr>

        <tr valign="top">
            <td><b>Status code:</b></td>
            <td>${pageContext.errorData.statusCode}</td>
        </tr>

    </table>
</div>
</html>
