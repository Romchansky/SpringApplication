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
    <form action="${pageContext.request.contextPath}/manufacturers" accept-charset="utf-8" method="post"></br>
        <div class="title">Create manufacturer</div>
        <div class="subtitle">Let's create the manufacturer!</div>
        <div class="error-message">${message}</div>
        <input type="hidden" name="manufacturerId" value=0 />
        <div class="input-container ic2">
            <input required id="manufacturerName" class="input" type="text" name="manufacturerName" placeholder=" "/>
            <div class="cut-short"></div>
            <label for="manufacturerName" class="placeholder">Manufacturer name</label>
        </div>
        <div class="error-message">${error}</div>
        <button type="submit" class="submit">SUBMIT</button>
    </form>
</div>
</body>
</html>