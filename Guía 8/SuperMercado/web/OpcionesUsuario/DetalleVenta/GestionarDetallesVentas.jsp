<%-- 
    Document   : GestionarDetallesVentas
    Created on : 8 nov 2023, 21:16:21
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Detalles Venta</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Detalles de Venta</h1>
        <h2>Listado de Detalles de Venta</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarDetalleVenta">Agregar detalle de venta</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idDetallesVenta</th>
                    <th>idVenta</th>
                    <th>idProducto</th>
                    <th>cantidadVendida</th>
                    <th>subTotal</th>
                    <th>montoTotal</th>
                    <th>idMetodoPago</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaDestallesVentas}" var="item">
                    <tr>
                        <td><c:out value="${item.idDetallesVenta}" /></td>
                        <td><c:out value="${item.idVenta}" /></td>
                        <td><c:out value="${item.idProducto}" /></td>
                        <td><c:out value="${item.cantidadVendida}" /></td>
                        <td><c:out value="${item.subTotal}" /></td> 
                        <td><c:out value="${item.montoTotal}" /></td>
                        <td><c:out value="${item.idMetodoPago}" /></td> 
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/DetalleVenta/ModificarDetalleVenta.jsp">
                                <input type="hidden" name="idDetallesVenta" value="${item. idDetallesVenta}" /> 
                                <input type="hidden" name="idVenta" value="${item.idVenta}" />
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="cantidadVendida" value="${item.cantidadVendida}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="montoTotal" value="${item.montoTotal}" />
                                <input type="hidden" name="idMetodoPago" value="${item.idMetodoPago}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/DetalleVenta/EliminarDetalleVenta.jsp">
                                 <input type="hidden" name="idDetallesVenta" value="${item. idDetallesVenta}" /> 
                                <input type="hidden" name="idVenta" value="${item.idVenta}" />
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="cantidadVendida" value="${item.cantidadVendida}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="montoTotal" value="${item.montoTotal}" />
                                <input type="hidden" name="IdMetodoPago" value="${item.idMetodoPago}" />
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
