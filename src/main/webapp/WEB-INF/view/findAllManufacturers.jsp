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
        <h2> Manufacturers </h2>
    </caption>
    <thead>
    <tr>
        <th align="left">Manufacturer name</th>
        <th align="left">Products</th>
        <th colspan="2" align="center">Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>${manufacturer.name}</td>
            <td align="center"><a href="/product/findProductByManufacturerId?id=${manufacturer.id}">
                <button>Products</button>
            </a>
            </td>
            <td align="center"><a href="/manufacturer/findManufacturerById?id=${manufacturer.id}">
                <button>Details</button>
            </a>
            </td>
            <td align="center">
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <a href="/manufacturer/form/update?id=${manufacturer.id}">
                        <button>Update</button>
                    </a>
                </security:authorize>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>