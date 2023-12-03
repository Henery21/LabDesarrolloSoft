<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </head>
    <body class="d-flex text-white d-flex justify-content-center" style="background-image:url(https://i.postimg.cc/8zxbr91n/pexels-hristo-fidanov-1252890.jpg)">
        <form method="POST" action="/Final/ServletPrincipal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>
            <div><h1 class="text-white">Bienvenido</h1></div>
            <c:set var="FechaActual" value="<%= new java.util.Date() %>" />
            <c:set var="FormatoFecha" value="dd/MM/YYYY " />
            <div>
                <label>
                    <strong>
                        <c:out value="Fecha Actual: "/>
                        <fmt:formatDate value='${FechaActual}' pattern='${FormatoFecha}' />
                    </strong>
                </label>
            </div><br>
            
            <div><label>Usuario: </label></div>
            <div><input type="text" name="Usuario" id="idtfUsuario"></div><br>
            <div><label>Contraseña: </label></div>
            <div><input type="password" name="Contrasenia" id="idtfContraseña"></div><br>
            <div class="d-flex justify-content-center w-100"><input class="btn btn-primary" type="submit" value="Iniciar Sesión"></div><br>
        </form>
    </body>
</html>
