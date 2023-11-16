<%-- 
    Document   : AgregarDetalleVenta
    Created on : 11 nov 2023, 19:18:25
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar DetalleVenta</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo detalle de venta</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarDetalleVenta">
            <div>
                <!-- El ID es autoincrementable -->
                <label>ID Venta:</label>
                <input type="text" name="idVenta" id="idVenta" required /><br>
                <label>ID Producto:</label>
                <input type="text" name="idProducto" id="idProducto" required /><br>
                <label>Cantidad vendida:</label>
                <input type="text" name="cantidadVendida" id="cantidadVendida" required /><br>
                <label>SubTotal:</label>
                <input type="text" name="subTotal" id="subTotal" required /><br>
                <label>Monto total:</label>
                <input type="text" name="montoTotal" id="montoTotal" required /><br>
                <label>ID Metodo de pago:</label>                          
                <input type="text" name="idMetodoPago" id="idMetodoPago" required /><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar los detalle de venta?')" /><br><br>
            </div><br>
            <div>
                <a href="/SuperMercado/?accion=GestionarDetallesVentas">Regresar</a>
            </div>            
        </form>
    </body>
</html>
