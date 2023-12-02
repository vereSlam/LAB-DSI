<%-- 
    Document   : ModificarUsuario
    Created on : 19 nov 2023, 10:50:36
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Usuarios</title>
    </head>
    <body class="agg">
        <h1>Modificar usuario</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarUsuario">
            <div>
                <label>idUsuario:</label>
                <input type="text" name="idUsuario" id="idUsuario" value="${param.idUsuario}" readonly /><br>
                <label>idEmpleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" required /><br>
                <label>idRol:</label>
                <input type="text" name="idRol" id="idRol" value="${param.idRol}" required /><br>
                <label>usuario:</label>
                <input type="text" name="usuario" id="usuario" value="${param.usuario}" required /><br>
                <label>clave:</label>
                <input type="text" name="clave" id="clave" value="${param.clave}" required /><br><br>   
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar el usuario?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarUsuarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>