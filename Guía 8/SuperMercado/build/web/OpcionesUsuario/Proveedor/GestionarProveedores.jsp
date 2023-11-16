<%-- 
    Document   : GestionarProveedores
    Created on : 8 nov 2023, 19:43:18
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Proveedores</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Proveedores</h1>
        <h2>Listado de Proveedores</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarProveedor">Agregar proveedor</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idProveedor</th>
                    <th>NombreProveedor</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>idDireccion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProveedores}" var="item">
                    <tr>
                        <td><c:out value="${item.idProveedor}" /></td>
                        <td><c:out value="${item.nombreProveedor}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.email}" /></td> 
                        <td><c:out value="${item.idDireccion}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Proveedor/ModificarProveedor.jsp">
                                <input type="hidden" name="idEmpleado" value="${item. idProveedor}" /> 
                                <input type="hidden" name="nombresEmpleado" value="${item.nombreProveedor}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Proveedor/EliminarProveedor.jsp">
                                <input type="hidden" name="idEmpleado" value="${item. idProveedor}" /> 
                                <input type="hidden" name="nombresEmpleado" value="${item.nombreProveedor}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
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
