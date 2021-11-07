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
<div class="form ${error != null ? 'has-error' : ''}">
    <form action="${pageContext.request.contextPath}/users" accept-charset="utf-8" method="post"></br>
        <div class="title">Update user</div>
        <div class="subtitle">Let's update the user!</div>
        <div class="error-message">${message}</div>
        <input type="hidden" name="userId" value='${user.userId}' />
        <div class="input-container ic1">
            <input required id="userEmail" class="input" type="text" name="userEmail"
                   value="<c:out value='${user.userEmail}'/>" readonly/>
        </div>
        <div class="input-container ic2">
            <input required id="password" class="input" type="text" name="password" placeholder=" " />
            <div class="cut-short"></div>
            <label for="password" class="placeholder">Password</label>
        </div>
        <div class="input-container ic2">
            <input required id="firstName" class="input" type="text" name="firstName"
                   value="<c:out value='${user.firstName}'/>"/>
            <div class="cut-short"></div>
            <label for="firstName" class="placeholder">First name</label>
        </div>
        <div class="input-container ic2">
            <input required id="lastName" class="input" type="text" name="lastName"
                   value="<c:out value='${user.lastName}' />"/>
            <div class="cut-short"></div>
            <label for="lastName" class="placeholder">Last name</label>
        </div>
        <div class="input-container ic2">
            <select required id="role" class="input" name="role">
                <option value="${user.role}" selected>${user.role.getRoleForDisplaying()}</option>
                <option value="ROLE_USER">User</option>
                <option value="ROLE_ADMIN">Admin</option>
            </select>
        </div>
        <div class="input-container ic2">
            <select required id="userStatus" class="input" name="userStatus">
                <option value="${user.userStatus}" selected>${user.userStatus}</option>
                <option value="ACTIVE">ACTIVE</option>
                <option value="DISABLED">DISABLED</option>
            </select>
        </div>
        <div class="error-message">${error}</div>
        <button type="submit" class="submit">SUBMIT</button>
    </form>
</div>
</body>
</html>