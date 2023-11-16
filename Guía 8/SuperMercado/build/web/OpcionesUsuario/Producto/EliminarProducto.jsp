<%-- 
    Document   : EliminarProducto
    Created on : 9 nov 2023, 22:18:45
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Producto</title>
    </head>
    <body>
         <h1>Eliminar producto</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarProducto">
            <div>
                <label>ID Producto: ${param.idProducto}</label><br>
                <label>ID SubCategoria: ${param.idSubCategoria}</label><br>
                <label>ID Proveedor: ${param.idProveedor}</label><br>
                <label>Nombre de Producto: ${param.nombreProducto}</label><br>
                <label>Descripcion: ${param.descripcion}</label><br>
                <label>Precio Unitario: ${param.precioUnitario}</label><br>
                <label>ID Precio de unidad: ${param.idUnidadPrecio}</label><br>   
                <input type="hidden" name="idProducto" id="idProducto" value="${param.idProducto}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el producto?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
