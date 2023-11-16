<%-- 
    Document   : ModificarInventario
    Created on : 11 nov 2023, 21:07:28
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Inventario</title>
    </head>
    <body>
         <h1>Modificar inventario</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarInventario">
            <div>
                <label>idInventario:</label>
                <input type="text" name="idInventario" id="idInventario" value="${param.idInventario}" readonly /><br>
                <label>idCantidadStock:</label>
                <input type="text" name="idCantidadStock" id="idCantidadStock" value="${param.idCantidadStock}" required /><br>
                <label>Cantidad existente:</label>
                <input type="text" name="cantExist" id="cantExist" value="${param.cantExist}" required /><br>
                <label>Fecha de actualizacion:</label>
                <input type="date" name="fechaActualizacion" id="cantExist" value="${param.fechaActualizacion}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el inventario?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarInventarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
