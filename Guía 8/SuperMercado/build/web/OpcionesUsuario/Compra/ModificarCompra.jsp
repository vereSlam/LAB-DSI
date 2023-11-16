<%-- 
    Document   : ModificarCompra
    Created on : 11 nov 2023, 20:25:12
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Compra</title>
    </head>
    <body>
        <h1>Modificar compra</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarCompra">
            <div>
                <label>idCompra:</label>
                <input type="text" name="idCompra" id="idCompra" value="${param.idCompra}" readonly /><br>
                <label>idProveedor:</label>
                <input type="text" name="idProveedor" id="idProveedor" value="${param.idProveedor}" required /><br>
                <label>idEmpleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" required /><br>
                <label>idProducto:</label>
                <input type="text" name="idProducto" id="idProducto" value="${param.idProducto}" required /><br>
                <label>Fecha de compra:</label>
                <input type="date" name="fechaCompra" id="fechaCompra" value="${param.fechaCompra}" required /><br>
                <label>Monto total:</label>
                <input type="text" name="montoTotal" id="montoTotal" value="${param.montoTotal}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la compra?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
