<%-- 
    Document   : AgregarMetodoPago
    Created on : 11 nov 2023, 19:36:02
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Metodo Pago</title>
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
        <h1>Agregar nuevo metodo de pago</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarMetodoPago">
            <div>
                <!-- El ID es autoincrementable -->
                <label>Nombre del metodo de pago:</label>
                <input type="text" name="nombreMetodoPago" id="nombreMetodoPago" required /><br>                      
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el metodo de pago?')" /><br><br>
            </div><br>
            <div>
                <a href="/SuperMercado/?accion=GestionarMetodoPago">Regresar</a>
            </div>            
        </form>
    </body>
</html>
