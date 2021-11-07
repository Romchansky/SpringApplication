<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<div class="navbar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <div class="dropdown">
        <button class="dropbtn">Users
            <i></i>
        </button>
        <div class="dropdown-content">
            <a href="${pageContext.request.contextPath}/users">Show Users</a>
            <a href="${pageContext.request.contextPath}/users/findUser">Find User</a>
            <security:authorize access="hasRole('ROLE_ADMIN')">
                <a href="${pageContext.request.contextPath}/users/form/add">Create user</a>
            </security:authorize>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Manufacturers
            <i></i>
        </button>
        <div class="dropdown-content">
            <a href="${pageContext.request.contextPath}/manufacturers">Show Manufacturers</a>
            <a href="${pageContext.request.contextPath}/manufacturers/findManufacturer">Find manufacturer</a>
            <a href="${pageContext.request.contextPath}/manufacturers/form/add">Add manufacturer</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Products
            <i></i>
        </button>
        <div class="dropdown-content">
            <a href="${pageContext.request.contextPath}/products">Show Products</a>
            <a href="${pageContext.request.contextPath}/products/findProduct">Find product</a>
            <a href="${pageContext.request.contextPath}/products/form/add">Add product</a>
        </div>
    </div>
    <div style="display: flex; justify-content: flex-end">
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>