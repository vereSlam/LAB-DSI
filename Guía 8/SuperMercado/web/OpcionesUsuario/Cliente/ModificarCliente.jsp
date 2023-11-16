<%-- 
    Document   : ModificarCliente
    Created on : 11 nov 2023, 20:20:17
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Cliente</title>
    </head>
    <body>
        <h1>Modificar cliente</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarCliente">
            <div>
                <label>idCliente:</label>
                <input type="text" name="idCliente" id="idCliente" value="${param.idCliente}" readonly /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresCliente" id="nombresCliente" value="${param.nombresCliente}" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosCliente" id="apellidosCliente" value="${param.apellidosCliente}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Email:</label>
                <input type="email" name="email" id="email" value="${param.email}" required /><br>
                <label>DUI:</label>
                <input type="text" name="DUI" id="DUI" value="${param.DUI}" required /><br>
                <label>idDirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" value="${param.idDireccion}" required /><br><br>            
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el cliente?')" /><br><br> 
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
