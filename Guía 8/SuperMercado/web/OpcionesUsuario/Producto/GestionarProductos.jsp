<%-- 
    Document   : GestionarProductos
    Created on : 8 nov 2023, 19:31:04
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Productos</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Productos</h1>
        <h2>Listado de Productos</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarProducto">Agregar producto</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdProducto</th>
                    <th>SubCategoria</th>
                    <th>NombreProveedor</th>
                    <th>NombreProducto</th>
                    <th>Descripcion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProductos}" var="item">
                    <tr>
                        <td><c:out value="${item.idProducto}" /></td>
                        <!--<td><c:out value="${item.idSubCategoria}" /></td> -->
                        <td><c:out value="${item.subCategoria}" /></td>
                        <!--<td><c:out value="${item.idProveedor}" /></td> -->
                        <td><c:out value="${item.nombreProveedor}" /></td>
                        <td><c:out value="${item.nombreProducto}" /></td>
                        <td><c:out value="${item.descripcion}" /></td> 
                        <!--<td><c:out value="${item.precioUnitario}" /></td> -->
                        <!--<td><c:out value="${item.idUnidadPrecio}" /></td> -->
                        <!--<td><c:out value="${item.unidadPrecio}" /></td>-->
                        
                         <!-- AÑADIR OPCIONES DE DETALLES, MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick="mostrarDetallesProductos(
                                                '${item.idProducto}',
                                                '${item.subCategoria}',
                                                '${item.nombreProveedor}',
                                                '${item.nombreProducto}',
                                                '${item.descripcion}',
                                                '${item.precioUnitario}',
                                                '${item.unidadPrecio}'
                                                )">Ver detalles
                            </button>
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>IdProducto: <span id="idProducto"></span></label><br>
                                <label>SubCategoria: <span id="subCategoria"></span></label><br>
                                <label>NombreProveedor: <span id="nombreProveedor"></span></label><br>
                                <label>NombreProducto: <span id="nombreProducto"></span></label><br>
                                <label>Descripcion: <span id="descripcion"></span></label><br>
                                <label>PrecioUnitario: <span id="precioUnitario"></span></label><br>
                                <label>UnidadPrecio: <span id="unidadPrecio"></span></label><br>><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Producto/ModificarProducto.jsp">
                                <input type="hidden" name="idProducto" value="${item. idProducto}" /> 
                                <input type="hidden" name="idSubCategoria" value="${item.idSubCategoria}" />
                                <input type="hidden" name="idProveedor" value="${item.idProveedor}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="idUnidadPrecio" value="${item.idUnidadPrecio}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Producto/EliminarProducto.jsp">
                                 <input type="hidden" name="idProducto" value="${item. idProducto}" /> 
                                <input type="hidden" name="subCategoria" value="${item.subCategoria}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="unidadPrecio" value="${item.unidadPrecio}" />
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
            function mostrarDetallesProductos(idProducto, subCategoria, nombreProveedor, nombreProducto, descripcion, precioUnitario, unidadPrecio) {
                document.getElementById('idProducto').textContent = idProducto;
                document.getElementById('subCategoria').textContent = subCategoria;
                document.getElementById('nombreProveedor').textContent = nombreProveedor;
                document.getElementById('nombreProducto').textContent = nombreProducto;
                document.getElementById('descripcion').textContent = descripcion;
                document.getElementById('precioUnitario').textContent = precioUnitario;
                document.getElementById('unidadPrecio').textContent = unidadPrecio;
                // Muestra el pop-up
                abrirPopup();
            }
        </script>
    </body>
</html>
