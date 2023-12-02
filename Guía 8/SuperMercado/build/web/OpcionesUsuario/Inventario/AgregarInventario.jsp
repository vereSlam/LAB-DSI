<%-- 
    Document   : AgregarInventario
    Created on : 11 nov 2023, 19:29:52
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregra Inventario</title>
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
        <h1>Agregar nuevo inventario</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarInventario">
            <div>
                <!-- El ID es autoincrementable -->
                <label>ID CantidadStock:</label>
                <input type="text" name="idCantidadStock" id="idCantidadStock" required /><br>
                <label>Cantidad existente:</label>
                <input type="text" name="cantExist" id="cantExist" required /><br>
                <label>Fecha de actualizacion:</label>
                <input type="date" name="fechaActualizacion" id="cantExist" required /><br>                           
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar el inventario?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarInventarios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
