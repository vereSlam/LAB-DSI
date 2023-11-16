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
                    <th>idProducto</th>
                    <th>idSubCategoria</th>
                    <th>idProveedor</th>
                    <th>NombreProducto</th>
                    <th>Descripcion</th>
                    <th>PrecioUnitario</th>
                    <th>idUnidadPrecio</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProductos}" var="item">
                    <tr>
                        <td><c:out value="${item.idProducto}" /></td>
                        <td><c:out value="${item.idSubCategoria}" /></td>
                        <td><c:out value="${item.idProveedor}" /></td>
                        <td><c:out value="${item.nombreProducto}" /></td>
                        <td><c:out value="${item.descripcion}" /></td> 
                        <td><c:out value="${item.precioUnitario}" /></td>
                        <td><c:out value="${item.idUnidadPrecio}" /></td> 
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
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
                                <input type="hidden" name="idSubCategoria" value="${item.idSubCategoria}" />
                                <input type="hidden" name="idProveedor" value="${item.idProveedor}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="idUnidadPrecio" value="${item.idUnidadPrecio}" />
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
