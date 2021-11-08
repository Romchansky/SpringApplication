<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<form:form method="post" modelAttribute="product" class="form-signin" action="/product/addProduct">
    Product name: <form:input type="text" path="name" placeholder="Enter product name"/> <br/>
    Product price: <form:input type="number" step="1.00" path="price" placeholder="Enter product price"/> <br/>
    Manufacturer:
    <form:select path="manufacturer">
        <form:option value="NONE" label="--- Select ---"/>
        <form:options  items="${manufacturers}" />
    </form:select>

    <button type="submit">Create Product</button>
</form:form>
</body>
</html>