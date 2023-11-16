<%-- 
    Document   : ModificarCantidadStock
    Created on : 11 nov 2023, 20:06:19
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar CantidadStock</title>
    </head>
    <body>
        <h1>Modificar cantidad en Stock</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarCantidadStock">
            <div>
                <label>idCantidadStock:</label>
                <input type="text" name="idCantidadStock" id="idCantidadStock" value="${param.idCantidadStock}" readonly /><br>
                <label>idCompra:</label>
                <input type="text" name="idCompra" id="idCompra" value="${param.idCompra}" required /><br>
                <label>Cantidad:</label>
                <input type="text" name="cantidad" id="cantidad" value="${param.cantidad}" required /><br>
                <label>Fecha de entrada:</label>
                <input type="date" name="fechaEntrada" id="fechaEntrada" value="${param.fechaEntrada}" required /><br><br>          
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la cantidad en Stock?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarCantidadStock">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
