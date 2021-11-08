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
    <form:form method="post" modelAttribute="user" action="user/update">
        <form:input type="hidden" path="id" value="${user.get().id}"/> <br/>
        <form:input type="text" path="firstName" placeholder="Firstname"/> <br/>
        <form:input type="text" path="lastName" placeholder="Lastname"/> <br/>
        <form:input type="hidden" path="email" value="${user.get().email}"/>
        <form:input type="password" path="password" placeholder="Password"/> <br/>
        <label for="userRole">
        </label><select required id="userRole" class="input" name="userRole">
            <option value="ROLE_USER">User</option>
            <option value="ROLE_ADMIN">Admin</option>
        </select>
        <label for="userStatus">
        </label><select required id="userStatus" class="input" name="userStatus">
            <option value="ACTIVE">ACTIVE</option>
            <option value="DISABLED">DISABLED</option>
        </select>
        <button type="submit">Update user</button>
    </form:form>
</body>
</html>