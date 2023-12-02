<%-- 
    Document   : AgregarDireccion
    Created on : 11 nov 2023, 19:26:16
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Direccion</title>
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
        <h1>Agregar nueva direccion</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarDireccion">
            <div>
                <!-- El ID es autoincrementable -->
                <label>Linea 1:</label>
                <input type="text" name="linea1" id="linea1" required /><br>
                <label>Linea 2:</label>
                <input type="text" name="linea2" id="linea2" required /><br>
                <label>Codigo postal:</label>
                <input type="text" name="codigoPostal" id="codigoPostal" required /><br>
                <label>ID Distrito:</label>
                <input type="text" name="idDistrito" id="idDistrito" required /><br>                           
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar la direccion?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarDirecciones">Regresar</a>
            </div>            
        </form>
    </body>
</html>
