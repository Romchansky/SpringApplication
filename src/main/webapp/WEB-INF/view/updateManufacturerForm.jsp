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
    <form:form method="post" modelAttribute="manufacturer" class="form-signin" action="manufacturer/updateManufacturer">
        <form:input type="hidden" path="id" value="${manufacturer.get().id}"/> <br/>
        Manufacturer name: <form:input type="text" path="name" placeholder="Enter manufacturer name"/> <br/>
        <button type="submit">Update manufacturer</button>
    </form:form>
</body>
</html>