<%-- 
    Document   : AgregarCompra
    Created on : 11 nov 2023, 19:13:17
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Compra</title>
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
        <h1>Agregar nuevo compra</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarCompra">
            <div>
                <!-- El ID es autoincrementable -->
                <label>ID Proveedor:</label>
                <input type="text" name="idProveedor" id="idProveedor" required /><br>
                <label>ID Empleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" required /><br>
                <label>ID Producto:</label>
                <input type="text" name="idProducto" id="idProducto" required /><br>
                <label>Fecha de compra:</label>
                <input type="date" name="fechaCompra" id="fechaCompra" required /><br>
                <label>Monto total:</label>
                <input type="text" name="montoTotal" id="montoTotal" required /><br>    
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar la compra?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarCompras">Regresar</a>
            </div>            
        </form>
    </body>
</html>
