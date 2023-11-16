<%-- 
    Document   : ModificarAsignacionDescuentoProducto
    Created on : 11 nov 2023, 19:57:04
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Asignacion Descuento</title>
    </head>
    <body>
         <h1>Modificar empleado</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarAsignacionDescuentoProducto">
            <div>
                <label>idAsignacionDescuento:</label>
                <input type="text" name="idAsignacionDescuentoProducto" id="idAsignacionDescuentoProducto" value="${param.idAsignacionDescuentoProducto}" readonly /><br>
                <label>idProducto:</label>
                <input type="text" name="idProducto" id="idProducto" value="${param.idProducto}" required /><br>
                <label>idDescuento:</label>
                <input type="text" name="idDescuento" id="idDescuento" value="${param.idDescuento}" required /><br><br>          
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la asignacion de descuento?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarAsignacionDescuentoProducto">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
