<%-- 
    Document   : AgregarCantidadStock
    Created on : 11 nov 2023, 18:50:56
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar CantidadStock</title>
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
        <h1>Agregar nueva Cantidad en Stock</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarCantidadStock">
            <div>
                <!-- El ID es autoincrementable -->
                <label>ID Compra:</label>
                <input type="text" name="idCompra" id="idCompra" required /><br>
                <label>Cantidad:</label>
                <input type="text" name="cantidad" id="cantidad" required /><br>
                <label>Fecha de entrada:</label>
                <input type="date" name="fechaEntrada" id="fechaEntrada" required /><br>                          
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar una cantidad en Stock?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarCantidadStock">Regresar</a>
            </div>            
        </form>
    </body>
</html>
