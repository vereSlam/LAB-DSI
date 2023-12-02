<%-- 
    Document   : ModificarDireccion
    Created on : 11 nov 2023, 20:40:29
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Direccion</title>
    </head>
    <body class="agg">
         <h1>Modificar direccion</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarDireccion">
            <div>
                <label>idEmpleado:</label>
                <input type="text" name="idDireccion" id="idDireccion" value="${param.idDireccion}" readonly /><br>
                <label>Linea 1:</label>
                <input type="text" name="linea1" id="linea1" value="${param.linea1}" required /><br>
                <label>Linea 2:</label>
                <input type="text" name="linea2" id="linea2" value="${param.linea2}" required /><br>
                <label>Codigo postal:</label>
                <input type="text" name="codigoPostal" id="codigoPostal" value="${param.codigoPostal}" required /><br>
                <label>idDistrito:</label>
                <input type="text" name="idDistrito" id="idDistrito" value="${param.idDistrito}" required /><br><br>           
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar la direccion?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarDirecciones">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
