<%-- 
    Document   : AgregarProducto
    Created on : 1 dic 2023, 22:05:47
    Author     : fancu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Producto</title>
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
        <h1>Agregar nuevo Producto</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarProducto">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>idSubCategoria:</label>
                <input type="text" name="idSubCategoria" id="idSubCategoria" required /><br>
                <label>idProveedor:</label>
                <input type="text" name="idProveedor" id="idProveedor" required /><br>
                <label>nombreProducto:</label>
                <input type="text" name="nombreProducto" id="nombreProducto" required /><br>
                <label>descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" required /><br>
                <label>precioUnitario:</label>
                <input type="text" name="precioUnitario" id="precioUnitario" required /><br>
                <label>idUnidadPrecio:</label>
                <input type="text" name="idUnidadPrecio" id="idUnidadPrecio" required /><br><br>                            
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar el producto?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarProducto">Regresar</a>
            </div>            
        </form>
    </body>
</html>
