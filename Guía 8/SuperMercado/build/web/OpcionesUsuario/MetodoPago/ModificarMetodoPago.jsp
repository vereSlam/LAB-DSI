<%-- 
    Document   : ModificarMetodoPago
    Created on : 11 nov 2023, 21:11:56
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar MetodoPago</title>
    </head>
    <body class="agg">
        <h1>Modificar metodo de pago</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarMetodoPago">
            <div>
                <label>idMetodoPago:</label>
                <input type="text" name="idMetodoPago" id="idMetodoPago" value="${param.idMetodoPago}" readonly /><br>
                <label>Nombre del metodo de pago:</label>
                <input type="text" name="nombreMetodoPago" id="nombreMetodoPago" value="${param.nombreMetodoPago}" required /><br><br>           
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar el metodo de pago?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarMetodoPago">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
