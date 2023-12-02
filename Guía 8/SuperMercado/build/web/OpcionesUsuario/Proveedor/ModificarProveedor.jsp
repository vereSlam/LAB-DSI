<%-- 
    Document   : ModificarProveedor
    Created on : 19 nov 2023, 00:57:41
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Proveedor</title>
    </head>
    <body class="agg">
        <h1>Modificar proveedor</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarProveedor">
            <div>
                <label>idProveedor:</label>
                <input type="text" name="idProveedor" id="idProveedor" value="${param.idProveedor}" readonly /><br>
                <label>Nombre Proveedor:</label>
                <input type="text" name="nombreProveedor" id="nombreProveedor" value="${param.nombreProveedor}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Email:</label>
                <input type="email" name="email" id="email" value="${param.email}" required /><br>
                <label>idDirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" value="${param.idDireccion}" required /><br><br>           
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar el Proveedor?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarProveedores">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>