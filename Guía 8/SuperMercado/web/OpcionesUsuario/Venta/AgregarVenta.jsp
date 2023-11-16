<%-- 
    Document   : AgregarVenta
    Created on : 11 nov 2023, 19:41:58
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Venta</title>
    </head>
    <body>
       <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nueva venta</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarVenta">
            <div>
                <!-- El ID es autoincrementable -->
                <label>ID Empleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" required /><br>
                <label>ID Cliente:</label>
                <input type="text" name="idCliente" id="idCliente" required /><br>
                <label>Fecha de venta:</label>
                <input type="date" name="fechaVenta" id="fechaVenta" required /><br>
                <label>Hora de venta:</label>
                <input type="text" name="horaVenta" id="horaVenta" required /><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la venta?')" /><br><br>
            </div><br>
            <div>
                <a href="/SuperMercado/?accion=GestionarVentas">Regresar</a>
            </div>            
        </form>
    </body>
</html>
