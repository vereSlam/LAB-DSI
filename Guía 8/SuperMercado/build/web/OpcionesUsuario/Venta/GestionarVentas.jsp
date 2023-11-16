<%-- 
    Document   : GestionarVentas
    Created on : 8 nov 2023, 22:24:25
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar ventas</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Ventas</h1>
        <h2>Listado de Ventas</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarVenta">Agregar venta</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idVenta</th>
                    <th>idEmpleado</th>
                    <th>idCliente</th>
                    <th>fechaVenta</th>
                    <th>horaVenta</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaVentas}" var="item">
                    <tr>
                        <td><c:out value="${item.idVenta}" /></td>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.fechaVenta}" /></td>
                        <td><c:out value="${item.horaVenta}" /></td> 
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Venta/ModificarVenta.jsp">
                                <input type="hidden" name="idVenta" value="${item. idVenta}" /> 
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="fechaVenta" value="${item.fechaVenta}" />
                                <input type="hidden" name="horaVenta" value="${item.horaVenta}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Venta/EliminarVenta.jsp">
                              <input type="hidden" name="idVenta" value="${item. idVenta}" /> 
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="fechaVenta" value="${item.fechaVenta}" />
                                <input type="hidden" name="horaVenta" value="${item.horaVenta}" />
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
