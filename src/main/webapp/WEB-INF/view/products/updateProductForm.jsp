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
<div class="three-fields-form ${error != null ? 'has-error' : ''}">
    <form action="${pageContext.request.contextPath}/products" accept-charset="utf-8" method="post"></br>
        <div class="title">Update product</div>
        <div class="subtitle">Let's update the product!</div>
        <div class="error-message">${message}</div>
        <input type="hidden" name="productId" value='${product.productId}'/>
        <div class="input-container ic2">
            <input required id="productName" class="input" type="text" name="productName"
                   value='${product.productName}'/>
            <div class="cut-short"></div>
            <label for="productName" class="placeholder">Product name</label>
        </div>
        <div class="input-container ic2">
            <input required id="productPrice" class="input" type="number" step="0.01" name="productPrice"
                   value='${product.productPrice}'/>
            <div class="cut-short"></div>
            <label for="productPrice" class="placeholder">Product Price</label>
        </div>

        <div class="input-container ic2">
            <select required id="manufacturerName" class="input" name="manufacturerName">
                <option value="${product.manufacturer.manufacturerName}" selected>${product.manufacturer.manufacturerName}</option>
                <c:forEach var="manufacturer" items="${manufacturers}">
                    <option value='${manufacturer.manufacturerName}'>${manufacturer.manufacturerName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="error-message">${error}</div>
        <button type="submit" class="submit">SUBMIT</button>
    </form>
</div>
</body>
</html>