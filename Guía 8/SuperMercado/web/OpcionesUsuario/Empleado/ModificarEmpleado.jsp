<%-- 
    Document   : ModificarEmpleado
    Created on : 4 nov 2023, 10:17:26
    Author     : A21-PC33
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Empleado</title>
    </head>
    <body class="agg">
        <h1>Modificar empleado</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarEmpleado">
            <div>
                <label>idEmpleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" readonly /><br>
                <label>DUI:</label>
                <input type="text" name="DUI" id="DUI" value="${param.DUI}" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="ISSS" id="ISSS" value="${param.ISSS}" required /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" value="${param.nombresEmpleado}" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosEmpleado" id="apellidosEmpleado" value="${param.apellidosEmpleado}" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNac" id="fechaNac" value="${param.fechaNac}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Email:</label>
                <input type="email" name="email" id="email" value="${param.email}" required /><br>
                <label>Fecha de contratacion:</label>
                <input type="date" name="fechaContratacion" id="fechaContratacion" value="${param.fechaContratacion}" required /><br>
                <label>Salario:</label>
                <input type="text" name="salario" id="salario" value="${param.salario}" required /><br>
                <label>idCargo:</label>
                <input type="text" name="idCargo" id="idCargo" value="${param.idCargo}" required /><br>
                <label>idDirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" value="${param.idDireccion}" required /><br><br>           
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
