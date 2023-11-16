<%-- 
    Document   : GestionarClientes
    Created on : 8 nov 2023, 19:18:12
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Clientes</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Clientes</h1>
        <h2>Listado de Clientes</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarCliente">Agregar cliente</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idCliente</th>
                    <th>NombresCliente</th>
                    <th>ApellidosCliente</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>DUI</th>
                    <th>idDireccion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.nombresCliente}" /></td>
                        <td><c:out value="${item.apellidosCliente}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.email}" /></td> 
                        <td><c:out value="${item.DUI}" /></td>
                        <td><c:out value="${item.idDireccion}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Cliente/ModificarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item. idCliente}" /> 
                                <input type="hidden" name="nombresCliente" value="${item.nombresCliente}" />
                                <input type="hidden" name="apellidosCliente" value="${item.apellidosCliente}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="DUI" value="${item.DUI}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Cliente/EliminarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item. idCliente}" /> 
                                <input type="hidden" name="nombresCliente" value="${item.nombresCliente}" />
                                <input type="hidden" name="apellidosCliente" value="${item.apellidosCliente}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="DUI" value="${item.DUI}" />
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
