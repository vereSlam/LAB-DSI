<%-- 
    Document   : GestionarInventarios
    Created on : 8 nov 2023, 21:39:36
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Inventarios</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Inventarios</h1>
        <h2>Listado de Inventarios</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarInventario">Agregar inventario</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdInventario</th>
                    <th>CantExist</th>
                    <th>FechaEntrada</th>
                    <th>FechaActualizacion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaInventarios}" var="item">
                    <tr>
                        <td><c:out value="${item.idInventario}" /></td>
                        <!--<td><c:out value="${item.idCantidadStock}" /></td> -->
                        <td><c:out value="${item.cantExist}" /></td>
                        <td><c:out value="${item.fechaEntrada}" /></td>
                        <td><c:out value="${item.fechaActualizacion}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Inventario/ModificarInventario.jsp">
                                <input type="hidden" name="idInventario" value="${item. idInventario}" /> 
                                <input type="hidden" name="idCantidadStock" value="${item.idCantidadStock}" />
                                <input type="hidden" name="cantExist" value="${item.cantExist}" />
                                <input type="hidden" name="fechaActualizacion" value="${item.fechaActualizacion}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Inventario/EliminarInventario.jsp">
                                <input type="hidden" name="idInventario" value="${item. idInventario}" /> 
                                <input type="hidden" name="cantExist" value="${item.cantExist}" />
                                <input type="hidden" name="fechaEntrada" value="${item.fechaEntrada}" />
                                <input type="hidden" name="fechaActualizacion" value="${item.fechaActualizacion}" />
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
