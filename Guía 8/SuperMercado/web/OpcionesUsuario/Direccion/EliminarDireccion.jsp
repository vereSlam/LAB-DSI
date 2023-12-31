<%-- 
    Document   : EliminarDireccion
    Created on : 9 nov 2023, 22:08:04
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Direccion</title>
    </head>
    <body class="agg">
         <h1>Eliminar direccion</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarDireccion">
            <div>
                <label>ID Direccion: ${param.idDireccion}</label><br>
                <label>Linea 1: ${param.linea1}</label><br>
                <label>Linea 2: ${param.linea2}</label><br>
                <label>Distrito: ${param.distrito}</label><br>
                <label>Municipio: ${param.municipio}</label><br>
                <label>Departamento: ${param.departamento}</label><br>
                <label>Pais: ${param.pais}</label><br>
                <label>Codigo postal: ${param.codigoPostal}</label><br> 
                <input type="hidden" name="idDireccion" id="idDireccion" value="${param.idDireccion}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar la direccion?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarDirecciones">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
