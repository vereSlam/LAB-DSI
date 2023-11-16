<%-- 
    Document   : EliminarCantidadStock
    Created on : 9 nov 2023, 21:39:28
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar CantidadStock</title>
    </head>
    <body>
         <h1>Eliminar Candidad de Stock</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarCantidadStock">
            <div>
                <label>ID CantidadStock: ${param.idCantidadStock}</label><br>
                <label>ID Compra: ${param.idCompra}</label><br>
                <label>Cantidad: ${param.cantidad}</label><br>
                <label>Fecha de entrada: ${param.fechaEntrada}</label><br>   
                <input type="hidden" name="idCantidadStock" id="idCantidadStock" value="${param.idCantidadStock}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la cantidad de stock?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarCantidadStock">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
