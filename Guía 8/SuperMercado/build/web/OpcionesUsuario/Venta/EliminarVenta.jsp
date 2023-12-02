<%-- 
    Document   : EliminarVenta
    Created on : 9 nov 2023, 22:34:49
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Venta</title>
    </head>
    <body class="agg">
         <h1>Eliminar venta</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarVenta">
            <div>
                <label>ID Venta: ${param.idVenta}</label><br>
                <label>Nombre empleado: ${param.nombreEmpleado}</label><br>
                <label>Nombre cliente: ${param.nombreCliente}</label><br>
                <label>Fecha de venta: ${param.fechaVenta}</label><br>
                <label>Hora de venta: ${param.horaVenta}</label><br>  
                <input type="hidden" name="idVenta" id="idVenta" value="${param.idVenta}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar la venta?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
