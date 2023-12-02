<%-- 
    Document   : ModificarDescuento
    Created on : 16 nov 2023, 23:40:42
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Descuento</title>
    </head>
    <body class="agg">
        <h1>Modificar descuento</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarDescuento">
            <div>
                <label>idDescuento:</label>
                <input type="text" name="idDescuento" id="idDescuento" value="${param.idDescuento}" readonly /><br>
                <label>Nombre descuento:</label>
                <input type="text" name="nombreDescuento" id="nombreDescuento" value="${param.nombreDescuento}" required /><br>
                <label>Fecha de inicio:</label>
                <input type="date" name="fechaInicio" id="fechaInicio" value="${param.fechaInicio}" required /><br>
                <label>Fecha fin:</label>
                <input type="date" name="fechaFin" id="fechaFin" value="${param.fechaFin}" required /><br>
                <label>Porcentaje de descuento:</label>
                <input type="float" name="porcentajeDescuento" id="porcentajeDescuento" value="${param.porcentajeDescuento}" required /><br><br>       
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar este descuento?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarDescuentos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>