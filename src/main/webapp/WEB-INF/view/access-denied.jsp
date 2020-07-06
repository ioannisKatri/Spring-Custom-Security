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
           <p>ACCESS DENIED</p>
            <p>
                <a href="${pageContext.request.contextPath}/employees">Back to Home Page</a>
            </p>
        </div>
    </div>
</div>
</body>
</html>
