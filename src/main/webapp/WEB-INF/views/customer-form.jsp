<%--
  Created by IntelliJ IDEA.
  User: Santo_HW432
  Date: 25/06/2018
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Details</title>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <script src="<c:url value="${pageContext.request.contextPath}/resources/jquery/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>
<div class="container">
    <h2>Customer</h2>
    <form:form method="post" action="${pageContext.request.contextPath}/save" modelAttribute="customer">
        <form:hidden path="id"/>
        <fieldset class="form-group">
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" type="text" cssClass="form-control" required="required"/>
        </fieldset>
        <fieldset class="form-group">
            <form:label path="lastName">Last Name</form:label>
            <form:input path="lastName" type="text" cssClass="form-control" required="required"/>
        </fieldset>
        <fieldset class="form-group">
            <form:label path="email">Email</form:label>
            <form:input path="email" type="email" cssClass="form-control"/>
        </fieldset>
        <input type="submit" class="btn btn-success" value="Save"/>
        <a href="<c:url value="${pageContext.request.contextPath}/customer/list"/>" class="btn btn-dark">Cancel</a>
    </form:form>
</div>
</body>
</html>
