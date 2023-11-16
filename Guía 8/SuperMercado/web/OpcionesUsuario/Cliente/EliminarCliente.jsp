<%-- 
    Document   : EliminarCliente
    Created on : 9 nov 2023, 21:49:17
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Cliente</title>
    </head>
    <body>
        <h1>Eliminar cliente</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarCliente">
            <div>
                <label>ID Cliente: ${param.idCliente}</label><br>
                <label>Nombres: ${param.nombresCliente}</label><br>
                <label>Apellidos: ${param.apellidosCliente}</label><br>
                <label>Telefono: ${param.telefono}</label><br>
                <label>Email: ${param.email}</label><br>
                <label>DUI: ${param.DUI}</label><br>
                <label>ID Dirección: ${param.idDireccion}</label>   
                <input type="hidden" name="idCliente" id="idCliente" value="${param.idCliente}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el cliente?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
