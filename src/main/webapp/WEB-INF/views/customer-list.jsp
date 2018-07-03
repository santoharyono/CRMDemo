<%--
  Created by IntelliJ IDEA.
  User: Santo_HW432
  Date: 22/06/2018
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="common/_navigation.jsp"%>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<div id="container">
    <h2>CRM - Customer Relationship Manager</h2>
    <a href="<c:url value="${pageContext.request.contextPath}/customer/add"/>" class="btn btn-outline-primary">Add Customer</a>
    <table class="table table-hover">
        <thead class="thead-light">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <td>${customer.email}</td>
                <td><a href="
                    <c:url value="${pageContext.request.contextPath}/customer/save">
                        <c:param name="id" value="${customer.id}"/>
                    </c:url>"
                           class="btn btn-info">Update</a>
                    <security:authorize access="hasRole('ADMIN')">
                        <a href="
                    <c:url value="${pageContext.request.contextPath}/customer/delete">
                        <c:param name="id" value="${customer.id}"/>
                    </c:url>"
                           class="btn btn-warning" onclick="if (!(confirm('Are you sure to delete this customer?'))) return false">Delete</a>
                    </security:authorize>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
