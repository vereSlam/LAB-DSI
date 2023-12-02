<%-- 
    Document   : AgregarUsuario
    Created on : 1 dic 2023, 22:22:48
    Author     : fancu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Usuario</title>
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
        <h1>Agregar nuevo usuario</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarUsuario">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>idEmpleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" required /><br>
                <label>idRol:</label>
                <input type="text" name="idRol" id="idRol" required /><br>
                <label>usuario:</label>
                <input type="text" name="usuario" id="usuario" required /><br>
                <label>clave:</label>
                <input type="text" name="clave" id="clave" required /><br>               
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar el usuario ?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarUsuarios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
