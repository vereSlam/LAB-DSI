<%-- 
    Document   : ModificarProducto
    Created on : 19 nov 2023, 00:47:32
    Author     : fancu
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Producto</title>
    </head>
    <body class="agg">
        <h1>Modificar producto</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarProducto">
            <div>
                <label>idProducto:</label>
                <input type="text" name="idProducto" id="idProducto" value="${param.idProducto}" readonly /><br>
                <label>idSubCategoria:</label>
                <input type="text" name="idSubCategoria" id="idSubCategoria" value="${param.idSubCategoria}" required /><br>
                <label>idProveedor:</label>
                <input type="text" name="idProveedor" id="idProveedor" value="${param.idProveedor}" required /><br>
                <label>Nombre del Producto:</label>
                <input type="text" name="nombreProducto" id="nombreProducto" value="${param.nombreProducto}" required /><br>
                <label>descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br>
                <label>precio unitario:</label>
                <input type="float" name="precioUnitario" id="precioUnitario" value="${param.precioUnitario}" required /><br>
                <label>idUnidadPrecio:</label>
                <input type="text" name="idUnidadPrecio" id="idUnidadPrecio" value="${param.idUnidadPrecio}" required /><br><br>          
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar el producto?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>