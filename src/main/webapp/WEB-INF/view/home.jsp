<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h3 class="text-center pt-5 pb-5">Welcome to Security Website</h3>
    <div class="row">
        <div class="col-12">
            <p class="text-center">Hello
                <security:authentication property="principal.username"/> -
                <security:authentication property="principal.authorities"/>
                have a great day!</p>
            <!-- Add a link to point to /leaders ... this is for the managers -->

            <security:authorize access="hasRole('MANAGER')" >
                <p class="text-center">
                    <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
                    (Only for Manager peeps)
                </p>
            </security:authorize>
            <!-- Add a link to point to /systems ... this is for the admins -->
            <security:authorize access="hasRole('ADMIN')" >
                <p class="text-center">
                    <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
                    (Only for Admin peeps)
                </p>
            </security:authorize>
            <p class="pt-5 text-center">Do you want to log out?</p>

        <form:form cssClass="text-center" action="${pageContext.request.contextPath}/logout" method="POST">
            <button class="btn btn-primary" type="submit" value="logout">Logout</button>
        </form:form>
        </div>
    </div>
</div>
</body>
</html>
