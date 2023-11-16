<%-- 
    Document   : EliminarInventario
    Created on : 9 nov 2023, 22:12:09
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Inventario</title>
    </head>
    <body>
         <h1>Eliminar inventario</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarInventario">
            <div>
                <label>ID Inventario: ${param.idInventario}</label><br>
                <label>ID CantidadStock: ${param.idCantidadStock}</label><br>
                <label>Cantidad Existente: ${param.cantExist}</label><br>
                <label>Fecha actualizacion: ${param.fechaActualizacion}</label><br>   
                <input type="hidden" name="idInventario" id="idInventario" value="${param.idInventario}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el inventario?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarInventarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
