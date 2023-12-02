<%-- 
    Document   : EliminarEmpleado
    Created on : 4 nov 2023, 10:40:45
    Author     : A21-PC33
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Empleado</title>
    </head>
    <body class="agg">
          <h1>Eliminar empleado</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>ID Empleado: ${param.idEmpleado}</label><br>
                <label>DUI: ${param.DUI}</label><br>
                <label>Número de afiliado ISSS: ${param.ISSS}</label><br>
                <label>Nombres: ${param.nombresEmpleado}</label><br>
                <label>Apellidos: ${param.apellidosEmpleado}</label><br>
                <label>Fecha de nacimiento: ${param.fechaNac}</label><br>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>Email: ${param.email}</label><br>
                <label>Fecha de contratacion: ${param.fechaContratacion}</label><br>
                <label>Salario: ${param.salario}</label><br>
                <label>Cargo: ${param.cargo}</label><br>
                <label>Dirección completa: ${param.direccionCompleta}</label>   
                <input type="hidden" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" /><br><br>
                <input type="submit" class="botn" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
