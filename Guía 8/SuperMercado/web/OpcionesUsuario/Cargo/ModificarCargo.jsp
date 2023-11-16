<%-- 
    Document   : ModificarCargo
    Created on : 11 nov 2023, 20:15:34
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Cargo</title>
    </head>
    <body>
         <h1>Modificar cargo</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarCargo">
            <div>
                <label>idCargo:</label>
                <input type="text" name="idCargo" id="idCargo" value="${param.idCargo}" readonly /><br>
                <label>Cargo:</label>
                <input type="text" name="cargo" id="cargo" value="${param.cargo}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarCargos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
