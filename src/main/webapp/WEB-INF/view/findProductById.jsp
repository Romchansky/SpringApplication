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
                <h2>Product</h2>
            </caption>
            <thead>
                <tr>
                    <th align="left">Product name</th>
                    <th align="left">Product price</th>
                    <th colspan="2" align="center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <tr>
                    <td>${product.get().name}</td>
                    <td>${product.get().price}</td>
                    <td>${product.get().manufacturer}</td>
                    <td align="center">
                        <security:authorize access="hasRole('ROLE_ADMIN')">
                            <a href="/product/form/update?id=${product.get().id}">
                                <button>Update</button>
                            </a>
                        </security:authorize>
                    </td>
                    <td align="center">
                        <security:authorize access="hasRole('ROLE_ADMIN')">
                            <a href="/product/delete?id=${product.get().id}">
                                <button>Delete</button>
                            </a>
                        </security:authorize>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>