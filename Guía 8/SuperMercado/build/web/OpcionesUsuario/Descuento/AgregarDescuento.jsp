<%-- 
    Document   : AgregarDescuento
    Created on : 1 dic 2023, 23:44:38
    Author     : verri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Descuento</title>
    </head>
    <body class="agg">
       <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo descuento</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarDescuento">
            <div>
                <!-- El ID de los descuentos es autoincrementable -->
                <label>nombreDescuento:</label>
                <input type="text" name="nombreDescuento" id="nombreDescuento" required /><br>
                <label>fechaInicio:</label>
                <input type="date" name="fechaInicio" id="fechaInicio" required /><br>
                <label>fechaFin:</label>
                <input type="date" name="fechaFin" id="fechaFin" required /><br>
                <label>porcentajeDescuento:</label>
                <input type="text" name="porcentajeDescuento" id="porcentajeDescuento" required /><br>                        
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar el descuento?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarDescuento">Regresar</a>
            </div>            
        </form>
    </body>
</html>
