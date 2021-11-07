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
<div class="one-field-form ${error != null ? 'has-error' : ''}">
    <form action="/products/product" accept-charset="utf-8" method="get"></br>
        <div class="title">Find product</div>
        <div class="subtitle">Let's find the product!</div>
        <div class="error-message">${message}</div>
        <div class="input-container ic1">
            <input required id="productName" class="input" type="text" name="productName" placeholder=" "/>
            <div class="cut-short"></div>
            <label for="productName" class="placeholder">Enter product name</label>
        </div>
        <div class="error-message">${error}</div>
        <button type="submit" class="submit">SUBMIT</button>
    </form>

</div>
</body>
</html>