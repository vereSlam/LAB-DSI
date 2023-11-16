<%-- 
    Document   : ModificarVenta
    Created on : 11 nov 2023, 21:28:14
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Venta</title>
    </head>
    <body>
         <h1>Modificar venta</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarVenta">
            <div>
                <label>idVenta:</label>
                <input type="text" name="idVenta" id="idVenta" value="${param.idVenta}" readonly /><br>
                <label>idEmpleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" required /><br>
                <label>idCliente:</label>
                <input type="text" name="idCliente" id="idCliente"value="${param.idCliente}" required /><br>
                <label>Fecha de venta:</label>
                <input type="date" name="fechaVenta" id="fechaVenta" value="${param.fechaVenta}" required /><br>
                <label>Hora de venta:</label>
                <input type="text" name="horaVenta" id="horaVenta" value="${param.horaVenta}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la venta?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
