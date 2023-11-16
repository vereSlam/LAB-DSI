<%-- 
    Document   : AgregarAsignacionDescuentoProducto
    Created on : 11 nov 2023, 18:44:33
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Asignacion Descuento</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nueva asignacion de descuento</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarAsignacionDescuentoProducto">
            <div>
                <!-- El ID es autoincrementable -->
                <label>ID Producto:</label>
                <input type="text" name="idProducto" id="idProducto" required /><br>
                <label>ID Descuento:</label>
                <input type="text" name="idDescuento" id="idDescuento" required /><br>                           
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar una nueva asignacion de descuento?')" /><br><br>
            </div><br>
            <div>
                <a href="/SuperMercado/?accion=GestionarAsignacionDescuentoProducto">Regresar</a>
            </div>            
        </form>
    </body>
</html>
