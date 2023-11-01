
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Empleados</title>
    </head>
    <body>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        <button class="boton" onclick="regresar()">Regresar</button>
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