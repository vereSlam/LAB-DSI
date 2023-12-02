<%-- 
    Document   : EliminarCargo
    Created on : 9 nov 2023, 21:43:53
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Cargo</title>
    </head>
    <body class="agg">
        <h1>Eliminar Cargo</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarCargo">
            <div>
                <label>ID Cargo: ${param.idCargo}</label><br>
                <label>Cargo: ${param.cargo}</label><br>  
                <input type="hidden" name="idCargo" id="idCargo" value="${param.idCargo}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar el cargo?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarCargos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
