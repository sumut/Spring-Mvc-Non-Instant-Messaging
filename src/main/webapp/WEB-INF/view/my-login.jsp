<%--
  Created by IntelliJ IDEA.
  User: sumutella
  Date: 11/15/2019
  Time: 9:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
</head>
<body>
<div class="container">
    <form:form class="form-signin" method="post" action="${pageContext.request.contextPath}/auth-user">

        <c:if test="${param.error != null}">

            <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                Invalid username and password.
            </div>

        </c:if>


        <c:if test="${param.logout != null}">
            <div class="alert alert-success col-xs-offset-1 col-xs-10">
                You have been logged out.
            </div>
        </c:if>

        <h2 class="form-signin-heading">Please sign in</h2>
        <p>
            <label for="username" class="sr-only">Username</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
        </p>
        <p>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        </p>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>


        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form:form>
</div>


</body>
</html>
