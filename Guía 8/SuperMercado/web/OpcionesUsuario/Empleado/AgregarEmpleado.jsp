<%-- 
    Document   : AgregarEmpleado
    Created on : 4 nov 2023, 09:30:15
    Author     : A21-PC33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Agregar Empleado</title>
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
        <h1>Agregar nuevo empleado</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=AgregarEmpleado">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosEmpleado" id="apellidosEmpleado" required /><br>
                <label>DUI:</label>
                <input type="text" name="DUI" id="DUI" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="ISSS" id="ISSS" required /><br>
                 <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>Email:</label>
                <input type="email" name="email" id="email" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNac" id="fechaNac" required /><br>
                <label>Fecha de contratacion:</label>
                <input type="date" name="fechaContratacion" id="fechaContratacion" required /><br>
                <label>Salario:</label>
                <input type="text" name="salario" id="salario" required /><br>
                <label>idCargo:</label>
                <input type="text" name="idCargo" id="idCargo" required /><br>
                <label>idDirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" required /><br><br>                            
                <input type="submit" class="botn" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarEmpleados">Regresar</a>
            </div>            
        </form>
    </body>
</html>
