<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Log in with your account</title>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/WEB-INF/view/css/common.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"
          integrity="2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous"/>
</head>
<body>

<div>
    <form method="POST" action="login">
        <h2>Log in with your account</h2>
        <div>
            <input name="username" type="text" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" placeholder="Password"/>
            <button type="submit">Log In</button>
            <h4><a href="user/registration">Create account</a></h4>
        </div>
    </form>
</div>

</body>
</html>