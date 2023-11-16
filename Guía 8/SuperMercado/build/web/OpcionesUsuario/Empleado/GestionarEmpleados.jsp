
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Empleados</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
        <a href="/SuperMercado?accion=AgregarEmpleado">Agregar empleado</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
        </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idEmpleado</th>
                    <th>NombresEmpleado</th>
                    <th>ApellidosEmpleado</th>
                    <th>DUI</th>
                    <th>ISSS</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>FechaNac</th>
                    <th>FechaContratacion</th>
                    <th>Salario</th>
                    <th>idCargo</th>
                    <th>idDireccion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <td><c:out value="${item.nombresEmpleado}" /></td>
                        <td><c:out value="${item.apellidosEmpleado}" /></td>
                        <td><c:out value="${item.DUI}" /></td>
                        <td><c:out value="${item.ISSS}" /></td> 
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.email}" /></td>  
                        <td><c:out value="${item.fechaNac}" /></td> 
                        <td><c:out value="${item.fechaContratacion}" /></td>
                        <td><c:out value="${item.salario}" /></td>
                        <td><c:out value="${item.idCargo}" /></td>
                        <td><c:out value="${item.idDireccion}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Empleado/ModificarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" /> 
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="DUI" value="${item.DUI}" />
                                <input type="hidden" name="ISSS" value="${item.ISSS}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="fechaContratacion" value="${item.fechaContratacion}" />
                                <input type="hidden" name="salario" value="${item.salario}" />
                                <input type="hidden" name="idCargo" value="${item.idCargo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Empleado/EliminarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item. idEmpleado}" /> 
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="DUI" value="${item.DUI}" />
                                <input type="hidden" name="ISSS" value="${item.ISSS}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="fechaContratacion" value="${item.fechaContratacion}" />
                                <input type="hidden" name="salario" value="${item.salario}" />
                                <input type="hidden" name="idCargo" value="${item.idCargo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" class="bt" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
        <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>