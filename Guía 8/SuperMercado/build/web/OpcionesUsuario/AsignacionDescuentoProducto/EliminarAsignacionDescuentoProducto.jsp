<%-- 
    Document   : EliminarAsignacionDescuentoProducto
    Created on : 9 nov 2023, 21:28:43
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar AsignacionDescuento</title>
    </head>
    <body>
         <h1>Eliminar Asignacion de Descuento</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarAsignacionDescuentoProducto">
            <div>
                <label>ID Asignacion Descuento: ${param.idAsignacionDescuentoProducto}</label><br>
                <label>ID Producto: ${param.idProducto}</label><br>
                <label>ID Descuento: ${param.idDescuento}</label><br>  
                <input type="hidden" name="idAsignacionDescuentoProducto" id="idAsignacionDescuentoProducto" value="${param.idAsignacionDescuentoProducto}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la asignacion de descuento?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarAsignacionDescuentoProducto">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
