<%-- 
    Document   : ModificarDetalleVenta
    Created on : 11 nov 2023, 20:33:05
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar DetalleVenta</title>
    </head>
    <body>
         <h1>Modificar detalle de venta</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarDetalleVenta">
            <div>
                <label>idDetallesVenta:</label>
                <input type="text" name="idDetallesVenta" id="idDetallesVenta" value="${param.idDetallesVenta}" readonly /><br>
                <label>idVenta:</label>
                <input type="text" name="idVenta" id="idVenta" value="${param.idVenta}" required /><br>
                <label>idProducto:</label>
                <input type="text" name="idProducto" id="idProducto" value="${param.idProducto}" required /><br>
                <label>Cantidad vendida:</label>
                <input type="text" name="cantidadVendida" id="cantidadVendida" value="${param.cantidadVendida}" required /><br>
                <label>SubTotal:</label>
                <input type="text" name="subTotal" id="subTotal" value="${param.subTotal}" required /><br>
                <label>Monto total:</label>
                <input type="text" name="montoTotal" id="montoTotal" value="${param.montoTotal}" required /><br>
                <label>idMetodopago:</label>                          
                <input type="text" name="idMetodoPago" id="idMetodoPago" value="${param.idMetodoPago}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el detalle de venta?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarDetallesVenta">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
