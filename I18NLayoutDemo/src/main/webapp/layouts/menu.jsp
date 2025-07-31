<%-- 
    Document   : menu
    Created on : Jul 30, 2025, 9:43:49 PM
    Author     : 20113
--%>

<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light my-3">
    <div class="container-fluid">

        <!-- Logo / Trang ch? -->
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            <fmt:message key="menu.home"/>
        </a>

        <!-- Menu chính -->
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">
                        <fmt:message key="menu.about"/>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/contact.jsp">
                        <fmt:message key="menu.contact"/>
                    </a>
                </li>
            </ul>

            <!-- Nút ch?n ngôn ng? -->
            <div class="d-flex">
                <a class="btn btn-outline-primary me-2" href="${pageContext.request.contextPath}/change-lang?lang=en">EN</a>
                <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/change-lang?lang=vi">VI</a>
            </div>
        </div>

    </div>
</nav>
