<%-- 
    Document   : EliminarDescuento
    Created on : 9 nov 2023, 21:59:12
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Descuento</title>
    </head>
    <body>
         <h1>Eliminar descuento</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarDescuento">
            <div>
                <label>ID Descuento: ${param.idDescuento}</label><br>
                <label>Nombre del descuento: ${param.nombreDescuento}</label><br>
                <label>Fecha de inicio: ${param.fechaInicio}</label><br>
                <label>Fecha de fin: ${param.fechaFin}</label><br>
                <label>Porcentaje de descuento: ${param.porcentajeDescuento}</label><br>  
                <input type="hidden" name="idDescuento" id="idDescuento" value="${param.idDescuento}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el descuento?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarDescuentos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
