<%-- 
    Document   : GestionarUsuarios
    Created on : 19 nov 2023, 11:02:46
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Usuarios</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Usuario</h1>
        <h2>Listado de Usuarios</h2>
        <h1>Conexion: ${mensaje_conexion}</h1>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
          <div>
        <a href="/SuperMercado?accion=AgregarUsuario">Agregar Usuario</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
          </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idUsuario</th>
                    <th>NombreCompleto</th>
                    <th>NombreRol</th>
                    <th>Usuario</th>
                    <th>Clave</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaUsuarios}" var="item">
                    <tr>
                        <td><c:out value="${item.idUsuario}" /></td>
                        <!--<td><c:out value="${item.idEmpleado}" /></td> -->
                        <td><c:out value="${item.nombreCompleto}" /></td>
                        <!--<td><c:out value="${item.idRol}" /></td>-->
                        <td><c:out value="${item.nombreRol}" /></td>
                        <td><c:out value="${item.usuario}" /></td>
                        <td><c:out value="${item.clave}" /></td>
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Usuario/ModificarUsuario.jsp">
                                <input type="hidden" name="idUsuario" value="${item. idUsuario}" /> 
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="idRol" value="${item.idRol}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Usuario/EliminarUsuario.jsp">
                                 <input type="hidden" name="idUsuario" value="${item. idUsuario}" /> 
                                <input type="hidden" name="nombreCompleto" value="${item.nombreCompleto}" />
                                <input type="hidden" name="nombreRol" value="${item.nombreRol}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="submit" value="Eliminar" />
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
