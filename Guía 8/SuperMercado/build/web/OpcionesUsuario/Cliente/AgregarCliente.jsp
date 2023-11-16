<%-- 
    Document   : AgregarCliente
    Created on : 11 nov 2023, 19:03:22
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Cliente</title>
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
        <h1>Agregar nuevo cliente</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarCliente">
            <div>
                <!-- El ID es autoincrementable -->
                <label>Nombres:</label>
                <input type="text" name="nombresCliente" id="nombresCliente" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosCliente" id="apellidosCliente" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>Email:</label>
                <input type="email" name="email" id="email" required /><br>
                <label>DUI:</label>
                <input type="text" name="DUI" id="DUI" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" required /><br>                           
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el cliente?')" /><br><br>
            </div><br>
            <div>
                <a href="/SuperMercado/?accion=GestionarClientes">Regresar</a>
            </div>            
        </form>
    </body>
</html>
