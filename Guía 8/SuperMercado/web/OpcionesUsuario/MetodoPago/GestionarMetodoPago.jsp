<%-- 
    Document   : GestionarMetodoPago
    Created on : 8 nov 2023, 21:50:22
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Metodo de Pago</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarMetodoPago">Agregar metodo de pago</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idMetodoPago</th>
                    <th>NombreMetodoPago</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaMetodoPago}" var="item">
                    <tr>
                        <td><c:out value="${item.idMetodoPago}" /></td>
                        <td><c:out value="${item.nombreMetodoPago}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/MetodoPago/ModificarMetodoPago.jsp">
                                <input type="hidden" name="idMetodoPago" value="${item.idMetodoPago}" /> 
                                <input type="hidden" name="nombreMetodoPago" value="${item.nombreMetodoPago}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/MetodoPago/EliminarMetodoPago.jsp">
                                <input type="hidden" name="idMetodoPago" value="${item.idMetodoPago}" /> 
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
        </script>
    </body>
</html>
