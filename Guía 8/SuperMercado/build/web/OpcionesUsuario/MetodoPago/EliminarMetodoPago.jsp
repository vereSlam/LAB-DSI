<%-- 
    Document   : EliminarMetodoPago
    Created on : 9 nov 2023, 22:15:33
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar MetodoPago</title>
    </head>
    <body>
         <h1>Eliminar metodos de pago</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarMetodoPago">
            <div>
                <label>ID Metodo de pago: ${param.idMetodoPago}</label><br>
                <label>Nombre del metodo de pago: ${param.nombreMetodoPago}</label><br>  
                <input type="hidden" name="idMetodoPago" id="idMetodoPago" value="${param.idMetodoPago}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el metodo de pago?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarMetodoPago">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
