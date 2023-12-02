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
        </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>NombreProveedor</th>
                    <th>NombreProducto</th>
                    <th>FechaCompra</th>
                    <th>MontoTotal</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCompras}" var="item">
                    <tr>
                        <!--<td><c:out value="${item.idCompra}" /></td> -- >
                        <!--<td><c:out value="${item.idProveedor}" /></td> -->
                        <td><c:out value="${item.nombreProveedor}" /></td>
                        <!--<td><c:out value="${item.idEmpleado}" /></td> -->
                        <!--<td><c:out value="${item.nombresEmpleado}" /></td> -->
                        <!--<td><c:out value="${item.idProducto}" /></td> -->
                        <td><c:out value="${item.nombreProducto}" /></td>
                        <td><c:out value="${item.fechaCompra}" /></td> 
                        <td><c:out value="${item.montoTotal}" /></td>
                        
                        <!-- AÑADIR OPCIONES DE DETALLES, MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick="mostrarDetallesCompras(
                                                '${item.idCompra}',
                                                '${item.nombreProveedor}',
                                                '${item.nombresEmpleado}',
                                                '${item.nombreProducto}',
                                                '${item.fechaCompra}',
                                                '${item.montoTotal}'
                                                )">Ver detalles
                            </button>
                              <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>IdCompra: <span id="idCompra"></span></label><br>
                                <label>NombreProveedor: <span id="nombreProveedor"></span></label><br>
                                <label>NombresEmpleado: <span id="nombresEmpleado"></span></label><br>
                                <label>NombreProducto: <span id="nombreProducto"></span></label><br>
                                <label>FechaCompra: <span id="fechaCompra"></span></label><br>
                                <label>MontoTotal: <span id="montoTotal"></span></label><br><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
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
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
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
            function mostrarDetallesCompras(idCompra, nombreProveedor, nombresEmpleado, nombreProducto, fechaCompra, montoTotal) {
                document.getElementById('idCompra').textContent = idCompra;
                document.getElementById('nombreProveedor').textContent = nombreProveedor;
                document.getElementById('nombresEmpleado').textContent = nombresEmpleado;
                document.getElementById('nombreProducto').textContent = nombreProducto;
                document.getElementById('fechaCompra').textContent = fechaCompra;
                document.getElementById('montoTotal').textContent = montoTotal;

                // Muestra el pop-up
                abrirPopup();
            }
        </script>
    </body>
</html>
