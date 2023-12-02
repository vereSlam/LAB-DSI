<%-- 
    Document   : EliminarDetalleVenta
    Created on : 9 nov 2023, 22:03:15
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar DetallesVentas</title>
    </head>
    <body class="agg">
         <h1>Eliminar detalles de ventas</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarDetalleVenta">
            <div>
                <label>ID Detalles Venta: ${param.idDestallesVenta}</label><br>
                <label>Nombre empleado: ${param.nombreEmpleado}</label><br>
                <label>Nombre cliente: ${param.nombreCliente}</label><br>
                <label>Nombre producto: ${param.nombreProducto}</label><br>
                <label>Cantidad vendida: ${param.cantidadVendida}</label><br>
                <label>SubTotal: ${param.subTotal}</label><br>
                <label>Monto total: ${param.montoTotal}</label><br>
                <label>Nombre del Metodo de pago: ${param.nombreMetodoPago}</label><br>   
                <input type="hidden" name="idDetallesVenta" id="idDetallesVenta" value="${param.idDetallesVenta}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar los detalles de la venta?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarDetallesVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
