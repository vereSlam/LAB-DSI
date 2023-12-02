<%-- 
    Document   : GestionarDescuentos
    Created on : 8 nov 2023, 21:08:57
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head id="gestionar">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Descuentos</title>
    </head>
    <body id="gestionar">
       <h1>Gestión de Descuentos</h1>
        <h2>Listado de Descuentos</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarDescuento">Agregar descuento</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdDescuento</th>
                    <th>NombreDescuento</th>
                    <th>FechaInicio</th>
                    <th>FechaFin</th>
                    <th>PorcentajeDescuento</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaDescuentos}" var="item">
                    <tr>
                        <td><c:out value="${item.idDescuento}" /></td>
                        <td><c:out value="${item.nombreDescuento}" /></td>
                        <td><c:out value="${item.fechaInicio}" /></td>
                        <td><c:out value="${item.fechaFin}" /></td>
                        <td><c:out value="${item.porcentajeDescuento}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Descuento/ModificarDescuento.jsp">
                                <input type="hidden" name="idDescuento" value="${item. idDescuento}" /> 
                                <input type="hidden" name="nombreDescuento" value="${item.nombreDescuento}" />
                                <input type="hidden" name="fechaInicio" value="${item.fechaInicio}" />
                                <input type="hidden" name="fechaFin" value="${item.fechaFin}" />
                                <input type="hidden" name="porcentajeDescuento" value="${item.porcentajeDescuento}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Descuento/EliminarDescuento.jsp">
                                <input type="hidden" name="idDescuento" value="${item. idDescuento}" /> 
                                <input type="hidden" name="nombreDescuento" value="${item.nombreDescuento}" />
                                <input type="hidden" name="fechaInicio" value="${item.fechaInicio}" />
                                <input type="hidden" name="fechaFin" value="${item.fechaFin}" />
                                <input type="hidden" name="porcentajeDescuento" value="${item.porcentajeDescuento}" />
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
