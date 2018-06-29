<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Santo_HW432
  Date: 25/06/2018
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@include file="common/_navigation.jsp"%>
<html>
<head>
    <%--<% response.sendRedirect("/customer/list"); %>--%>
    <title>Welcome Page</title>
</head>
<body>
    <p>Welcome, <security:authentication property="principal.username"/> </p>
</body>
</html>
