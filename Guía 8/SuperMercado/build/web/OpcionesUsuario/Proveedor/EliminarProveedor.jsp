<%-- 
    Document   : EliminarProveedor
    Created on : 9 nov 2023, 22:22:57
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Proveedor</title>
    </head>
    <body>
         <h1>Eliminar proveedor</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarProveedor">
            <div>
                <label>ID Proveedor: ${param.idProveedor}</label><br>
                <label>Nombre del proveedor: ${param.nombreProveedor}</label><br>
                <label>Telefono: ${param.telefono}</label><br>
                <label>Email: ${param.email}</label><br>
                <label>ID Direccion: ${param.idDireccion}</label><br>  
                <input type="hidden" name="idProveedor" id="idProveedor" value="${param.idProveedor}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el proveedor?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarProveedores">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
