<%--
  Created by IntelliJ IDEA.
  User: Santo_HW432
  Date: 26/06/2018
  Time: 8:00
  To change this template use File | Settings | File Templates.
--%>
<%@include file="_header.jsp" %>
<html>
<head>

</head>
<body>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <a class="navbar-brand" href="/">CRM App</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <security:authorize access="hasRole('ADMIN')">
                <li class="nav-item active">
                    <a class="nav-link" href="/customer/list">Customer</a>
                </li>
            </security:authorize>
            <li class="nav-item">
                <a class="nav-link" href="/another">Another Menu</a>
            </li>
        </ul>
        <form:form action="/logout" cssClass="form-inline my-2 my-lg-0" method="post">
            <input type="submit" class="btn btn-primary" value="Log out">
        </form:form>
    </div>
</nav>
</body>
</html>
