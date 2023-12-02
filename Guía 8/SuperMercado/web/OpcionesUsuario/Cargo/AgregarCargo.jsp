<%-- 
    Document   : AgregarCargo
    Created on : 11 nov 2023, 18:57:15
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Cargo</title>
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
        <h1>Agregar nuevo cargo</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarCargo">
            <div>
                <!-- El ID es autoincrementable -->
                <label>Cargo:</label>
                <input type="text" name="cargo" id="cargo" required /><br>               
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar el cargo?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarCargos">Regresar</a>
            </div>            
        </form>
    </body>
</html>
