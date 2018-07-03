<%--
  Created by IntelliJ IDEA.
  User: Santo_HW432
  Date: 25/06/2018
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"/>" rel="stylesheet" id="bootstrap-css">
    <script src="<c:url value="http://code.jquery.com/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"/>"></script>
</head>
<body>

<div class="container">
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Sign In</div>
            </div>

            <div style="padding-top:30px" class="panel-body">

                <c:if test="${param.error != null}">
                    <div class="alert alert-danger col-sm-12">
                        Invalid username or password
                    </div>
                </c:if>
                <c:if test="${param.logout != null}">
                    <div class="alert alert-warning col-sm-12">
                        You have been logged out
                    </div>
                </c:if>

                <form:form id="loginform" action="${pageContext.request.contextPath}/authenticate" class="form-horizontal" role="form">

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="login-username" type="text" class="form-control" name="username" value=""
                               placeholder="username or email">
                    </div>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="login-password" type="password" class="form-control" name="password"
                               placeholder="password">
                    </div>

                    <div style="margin-top:10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                            <input type="submit" class="btn btn-success" value="Login"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12 controls">
                            <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                Don't have an account!
                                <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                    Sign Up Here
                                </a>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>

    <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Sign Up</div>
                <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
            </div>
            <div class="panel-body" >
                <form:form id="signupform" class="form-horizontal" role="form" modelAttribute="user">

                    <div id="signupalert" style="display:none" class="alert alert-danger">
                        <p>Error:</p>
                        <span></span>
                    </div>

                    <%--<fieldset class="form-group">--%>
                        <%--<form:label path="username" cssClass="col-md-3 control-label">User Name</form:label>--%>
                        <%--<div class="col-md-9">--%>
                            <%--<form:input path="username" type="text" cssClass="form-control" placeholder="User Name" required="required"/>--%>
                        <%--</div>--%>
                    <%--</fieldset>--%>
                    <div class="form-group">
                        <label for="username" class="col-md-3 control-label">First Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="firstname" placeholder="First Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label">Password</label>
                        <div class="col-md-9">
                            <input type="password" class="form-control" name="passwd" placeholder="Password">
                        </div>
                    </div>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
