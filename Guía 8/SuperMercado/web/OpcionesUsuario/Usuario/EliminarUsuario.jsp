<%-- 
    Document   : EliminarUsuario
    Created on : 19 nov 2023, 11:03:13
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Usuario</title>
    </head>
    <body class="agg">
         <h1>Eliminar usuario</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarUsuario">
            <div>
                <label>ID Usuario: ${param.idUsuario}</label><br>
                <label>Nombre completo: ${param.nombreCompleto}</label><br>
                <label>Nombre Rol: ${param.nombreRol}</label><br>
                <label>Usuario: ${param.usuario}</label><br>   
                 <label>Clave: ${param.clave}</label><br> 
                <input type="hidden" name="idUsuario" id="idUsuario" value="${param.idUsuario}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar el usuario?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarInventarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>

