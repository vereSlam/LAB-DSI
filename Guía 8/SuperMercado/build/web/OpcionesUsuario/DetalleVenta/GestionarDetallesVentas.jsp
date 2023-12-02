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
                    <th>NombreProducto</th>
                    <th>CantidadVendida</th>
                    <th>SubTotal</th>
                    <th>MontoTotal</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaDetallesVentas}" var="item">
                    <tr>
                        <!--<td><c:out value="${item.idDetallesVenta}" /></td> -->
                        <!--<td><c:out value="${item.idVenta}" /></td> -->
                        <!--<td><c:out value="${item.nombreEmpleado}" /></td> -->
                        <!--<td><c:out value="${item.nombreCliente}" /></td> -->
                        <!--<td><c:out value="${item.idProducto}" /></td> -->
                        <td><c:out value="${item.nombreProducto}" /></td>
                        <td><c:out value="${item.cantidadVendida}" /></td>
                        <td><c:out value="${item.subTotal}" /></td> 
                        <td><c:out value="${item.montoTotal}" /></td>
                        <!--<td><c:out value="${item.idMetodoPago}" /></td> -->
                        <!--<td><c:out value="${item.nombreMetodoPago}" /></td> -->
                        
                        <!-- AÑADIR OPCIONES DE DETALLES, MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick="mostrarDetallesVentas(
                                                '${item.idDetallesVenta}',
                                                '${item.nombreEmpleado}',
                                                '${item.nombreCliente}',
                                                '${item.nombreProducto}',
                                                '${item.cantidadVendida}',
                                                '${item.subTotal}',
                                                '${item.montoTotal}',
                                                '${item.nombreMetodoPago}'
                                                )">Ver detalles
                            </button>
                              <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>IdDetallesVenta: <span id="idDetallesVenta"></span></label><br>
                                <label>NombreEmpleado: <span id="nombreEmpleado"></span></label><br>
                                <label>NombreCliente: <span id="nombreCliente"></span></label><br>
                                <label>NombreProducto: <span id="nombreProducto"></span></label><br>
                                <label>CantidadVendidad: <span id="cantidadVendida"></span></label><br>
                                <label>SubTotal: <span id="subTotal"></span></label><br>
                                <label>MontoTotal: <span id="montoTotal"></span></label><br>
                                <label>MetodoPago: <span id="nombreMetodoPago"></span></label><br><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
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
                                <input type="hidden" name="nombreEmpleado" value="${item.nombreEmpleado}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="cantidadVendida" value="${item.cantidadVendida}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="montoTotal" value="${item.montoTotal}" />
                                <input type="hidden" name="nombreMetodoPago" value="${item.nombreMetodoPago}" />
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
            function abrirPopup() {
                var popup = document.getElementById('popup');
                var overlay = document.getElementById('overlay');

                if (popup.style.display === 'block') {
                    popup.style.display = 'none';
                    overlay.style.display = 'none';
                } else {
                    popup.style.display = 'block';
                    overlay.style.display = 'block';
                  }
            }
            function mostrarDetallesVentas(idDetallesVenta, nombreEmpleado, nombreCliente, nombreProducto, cantidadVendida, subTotal, montoTotal, nombreMetodoPago) {
                document.getElementById('idDetallesVenta').textContent = idDetallesVenta;
                document.getElementById('nombreEmpleado').textContent = nombreEmpleado;
                document.getElementById('nombreCliente').textContent = nombreCliente;
                document.getElementById('nombreProducto').textContent = nombreProducto;
                document.getElementById('cantidadVendida').textContent = cantidadVendida;
                document.getElementById('subTotal').textContent = subTotal;
                document.getElementById('montoTotal').textContent = montoTotal;
                document.getElementById('nombreMetodoPago').textContent = nombreMetodoPago;

                // Muestra el pop-up
                abrirPopup();
            }
        </script>
    </body>
</html>
