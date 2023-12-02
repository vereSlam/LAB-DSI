<%-- 
    Document   : AgregarSubCategoria
    Created on : 1 dic 2023, 22:18:14
    Author     : fancu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Subcategoria</title>
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
        <h1>Agregar nueva SubCategoria</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarSubCategoria">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>idCategoria:</label>
                <input type="text" name="idCategoria" id="idCategoria" required /><br>
                <label>subCategoria:</label>
                <input type="text" name="subCategoria" id="subCategoria" required /><br>                
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar la subCategoria ?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarSubCategoria">Regresar</a>
            </div>            
        </form>
    </body>
</html>
