<%-- 
    Document   : EliminarUnidadPrecio
    Created on : 9 nov 2023, 22:29:38
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar UnidadPrecio</title>
    </head>
    <body>
         <h1>Eliminar Precio de unidad</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarUnidadPrecio">
            <div>
                <label>ID Precio de unidad: ${param.idUnidadPrecio}</label><br>
                <label>Precio de unidad: ${param.unidadPrecio}</label><br>   
                <input type="hidden" name="idUnidadPrecio" id="idUnidadPrecio" value="${param.idUnidadPrecio}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el precio de unidad?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarUnidadPrecio">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
