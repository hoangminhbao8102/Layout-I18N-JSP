<%-- 
    Document   : header
    Created on : Jul 30, 2025, 9:43:31 PM
    Author     : 20113
--%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<fmt:setBundle basename="messages" />
<fmt:setLocale value="${sessionScope['jakarta.servlet.jsp.jstl.fmt.locale.session']}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><fmt:message key="title"/></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
</head>
<body>
<div class="container">
    <h1 class="text-center mt-3"><fmt:message key="title"/></h1>

    <!-- G?i menu -->
    <jsp:include page="/layouts/menu.jsp" />
