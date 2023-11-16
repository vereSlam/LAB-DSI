<%-- 
    Document   : GestionarCompras
    Created on : 8 nov 2023, 20:55:55
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Compras</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Compras</h1>
        <h2>Listado de Compras</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarCompra">Agregar compra</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
        <div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idCompra</th>
                    <th>idProveedor</th>
                    <th>idEmpleado</th>
                    <th>idProducto</th>
                    <th>fechaCompra</th>
                    <th>montoTotal</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCompras}" var="item">
                    <tr>
                        <td><c:out value="${item.idCompra}" /></td>
                        <td><c:out value="${item.idProveedor}" /></td>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <td><c:out value="${item.idProducto}" /></td>
                        <td><c:out value="${item.fechaCompra}" /></td> 
                        <td><c:out value="${item.montoTotal}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Compra/ModificarCompra.jsp">
                                <input type="hidden" name="idCompra" value="${item. idCompra}" /> 
                                <input type="hidden" name="idProveedor" value="${item.idProveedor}" />
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="fechaCompra" value="${item.fechaCompra}" />
                                <input type="hidden" name="montoTotal" value="${item.montoTotal}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Compra/EliminarCompra.jsp">
                                <input type="hidden" name="idCompra" value="${item. idCompra}" /> 
                                <input type="hidden" name="idProveedor" value="${item.idProveedor}" />
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="fechaCompra" value="${item.fechaCompra}" />
                                <input type="hidden" name="montoTotal" value="${item.montoTotal}" />
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
