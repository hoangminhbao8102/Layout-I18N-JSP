<%-- 
    Document   : index
    Created on : Jul 30, 2025, 9:43:02 PM
    Author     : 20113
--%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<fmt:setBundle basename="messages" />
<fmt:setLocale value="${sessionScope['jakarta.servlet.jsp.jstl.fmt.locale.session']}" />

<%@ include file="layouts/header.jsp" %>

<p class="lead"><fmt:message key="content.home"/></p>

<%@ include file="layouts/footer.jsp" %>
