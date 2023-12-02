<%-- 
    Document   : ModificarUnidadPrecio
    Created on : 19 nov 2023, 01:10:54
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Unidad Precio</title>
    </head>
    <body class="agg">
        <h1>Modificar Unidad Precio</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarUnidadPrecio">
            <div>
                <label>idUnidadPrecio:</label>
                <input type="text" name="idUnidadPrecio" id="idUnidadPrecio" value="${param.idUnidadPrecio}" readonly /><br>
                <label>unidadPrecio:</label>
                <input type="text" name="unidadPrecio" id="unidadPrecio" value="${param.unidadPrecio}" required /><br><br>    
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar la unidad de precio?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarUnidadPrecio">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>