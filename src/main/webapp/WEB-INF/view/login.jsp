<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <link href="${contextPath}/WEB-INF/view/css/common.css" rel="stylesheet"/>
    <link href="${contextPath}/WEB-INF/view/css/bootstrap.min.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
    <form method="POST" class="form-signin" action="login">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h5 class="text-center"><a href="/user/registration">Create an account</a></h5>
        </div>
    </form>
</div>
</body>
</html>