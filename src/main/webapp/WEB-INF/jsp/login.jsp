<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Akitoy - Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background-color:#ededed;">
<div style="background-color:#337ab7;height:50px;"></div>
<div class="container-fluid">
    <div class="row col-lg-4 col-lg-offset-4" style="margin-top: 80px;background-color:#fff;padding:20px;border:solid 1px #ddd;">
        <!-- <img th:src="@{/images/login.jpg}" class="img-responsive center-block" width="300" height="300" alt="Logo" /> -->
        <form th:action="@{/login}" method="POST" class="form-signin">
            <h3 class="form-signin-heading" th:text="Login">Ingrese sus datos:</h3>
            <br /> <input type="text" id="email" name="email" placeholder="Email" class="form-control" />
            <br /> <input type="password" placeholder="Password" id="password" name="password" class="form-control" /> <br />

            <div align="center">
                <c:if test="${param.error}">
                    <p style="font-size: 10px; color: #FF1C19;">Email o Password no validos</p>
                </c:if>

            </div>
            <button class="btn btn-lg btn-primary" name="Submit" value="Login" type="Submit" th:text="Login" style="margin-right:10px;">Login</button>
        </form>
    </div>
</div>
</body>
</html>