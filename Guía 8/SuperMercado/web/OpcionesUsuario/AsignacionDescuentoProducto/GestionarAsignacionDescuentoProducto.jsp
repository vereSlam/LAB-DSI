<%-- 
    Document   : AsignacionDescuentoProducto
    Created on : 8 nov 2023, 20:06:06
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Asignacion Descuento Producto</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Asignacion de Descuentos</h1>
        <h2>Listado de Asignaciones a Descuentos</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
        <button class="boton" onclick="regresar()">Regresar</button>
        <a href="/SuperMercado?accion=AgregarAsignacionDescuentoProducto">Agregar nueva Asignacion de Descuento</a><br><br>
        </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idAsignacionDescuentoProducto</th>
                    <th>idProducto</th>
                    <th>idDescuento</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaAsignacionDescuentoProducto}" var="item">
                    <tr>
                        <td><c:out value="${item.idAsignacionDescuentoProducto}" /></td>
                        <td><c:out value="${item.idProducto}" /></td>
                        <td><c:out value="${item.idDescuento}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/AsignacionDescuentoProducto/ModificarAsignacionDescuentoProducto.jsp">
                                <input type="hidden" name="idAsignacionDescuentoProducto" value="${item.idAsignacionDescuentoProducto}" /> 
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="idDescuento" value="${item.idDescuento}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/AsignacionDescuentoProducto/EliminarAsignacionDescuentoProducto.jsp">
                                <input type="hidden" name="idAsignacionDescuentoProducto" value="${item.idAsignacionDescuentoProducto}" /> 
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="idDescuento" value="${item.idDescuento}" />
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
