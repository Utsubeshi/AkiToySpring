<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Nuevo producto</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div style="background-color:#337ab7;height:50px;"></div>
<div class="container">
    <spring:url value="/usuario/registrarUsuario" var="saveURL" />
    <h2>Nuevo Usuario</h2>
    <form:form modelAttribute="usuario" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Nombres</label>
            <form:input path="nombres" cssClass="form-control" id="nombres" />
        </div>
        <div class="form-group">
            <label>Apellidos</label>
            <form:input path="apellidos" cssClass="form-control" id="apellidos" />
        </div>
        <div class="form-group">
            <label>Email</label>
            <form:input path="email" cssClass="form-control" id="email" />
        </div>
        <div class="form-group">
            <label>Password</label>
            <form:input path="password" type="password" cssClass="form-control" id="password" />
        </div>
        <button type="submit" class="btn btn-primary">Registrar</button>

        <span>${mensaje}</span>
    </form:form>
        <div>
            <br>
            <a class="btn btn-danger" href="producto/lista" role="button">Volver</a>
        </div>
</div>
</body>
</html>