<%-- 
    Document   : EliminarCompra
    Created on : 9 nov 2023, 21:55:40
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Compra</title>
    </head>
    <body class="agg">
         <h1>Eliminar compra</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarCompra">
            <div>
                <label>ID Compra: ${param.idCompra}</label><br>
                <label>Nombre roveedor: ${param.nombreProveedor}</label><br>
                <label>Nombres empleado: ${param.nombresEmpleado}</label><br>
                <label>Nombre producto: ${param.nombreProducto}</label><br>
                <label>Fecha de compra: ${param.fechaCompra}</label><br>
                <label>Monto total: ${param.montoTotal}</label><br> 
                <input type="hidden" name="idCompra" id="idCompra" value="${param.idCompra}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar la compra?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
