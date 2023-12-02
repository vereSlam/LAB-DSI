<%-- 
    Document   : AgregarProveedor
    Created on : 1 dic 2023, 22:13:59
    Author     : fancu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Proveedor</title>
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
        <h1>Agregar nuevo Proveedor</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarProveedor">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>nombreProveedor:</label>
                <input type="text" name="nombreProveedor" id="nombreProveedor" required /><br>
                <label>telefono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>email:</label>
                <input type="email" name="email" id="email" required /><br>
                <label>idDireccion:</label>
                <input type="text" name="idDireccion" id="idDireccion" required /><br>                     
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar Proveedor?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarProveedor">Regresar</a>
            </div>            
        </form>
    </body>
</html>

