<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="d-flex flex-column justify-content-center align-items-center p-5 m-5">
        <h3 class="p-5">Please Login</h3>
        <div class="w-50">
            <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

                <c:if test="${param.error != null}">
                    <div class="alert alert-danger text-center">Invalid username/password.</div>
                </c:if>

                <c:if test="${param.logout != null}">
                    <div class="alert alert-success text-center">You have been log out</div>
                </c:if>

                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" id="username" placeholder="Enter username">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary" value="Login">Login</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
