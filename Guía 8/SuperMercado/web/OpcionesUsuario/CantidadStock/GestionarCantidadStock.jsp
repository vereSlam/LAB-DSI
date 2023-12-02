<%-- 
    Document   : CantidadStock
    Created on : 8 nov 2023, 20:18:13
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Cantidad en Stock</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Stock</h1>
        <h2>Listado de Stock</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
        <a href="/SuperMercado?accion=AgregarCantidadStock">Agregar cantidad en Stock</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
        </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdCantidadStock</th>
                    <th>MontoTotal</th>
                    <th>Cantidad</th>
                    <th>FechaEntrada</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCantidadStock}" var="item">
                    <tr>
                        <td><c:out value="${item.idCantidadStock}" /></td>
                        <!-- <td><c:out value="${item.idCompra}" /></td> -->
                        <td><c:out value="${item.montoTotal}" /></td>
                        <td><c:out value="${item.cantidad}" /></td>
                        <td><c:out value="${item.fechaEntrada}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/CantidadStock/ModificarCantidadStock.jsp">
                                <input type="hidden" name="idCantidadStock" value="${item.idCantidadStock}" /> 
                                <input type="hidden" name="idCompra" value="${item.idCompra}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="fechaEntrada" value="${item.fechaEntrada}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/CantidadStock/EliminarCantidadStock.jsp">
                                <input type="hidden" name="idCantidadStock" value="${item.idCantidadStock}" /> 
                                <input type="hidden" name="montoTotal" value="${item.montoTotal}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="fechaEntrada" value="${item.fechaEntrada}" />
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
