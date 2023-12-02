<%-- 
    Document   : GestionarUnidadPrecio
    Created on : 8 nov 2023, 22:17:51
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar UnidadPrecio</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Precio de Unidades</h1>
        <h2>Listado de Precio de Unidades</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarUnidadPrecio">Agregar precio de unidad</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdUnidadPrecio</th>
                    <th>UnidadPrecio</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaUnidadPrecio}" var="item">
                    <tr>
                        <td><c:out value="${item.idUnidadPrecio}" /></td>
                        <td><c:out value="${item.unidadPrecio}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/UnidadPrecio/ModificarUnidadPrecio.jsp">
                                <input type="hidden" name="idUnidadPrecio" value="${item. idUnidadPrecio}" /> 
                                <input type="hidden" name="unidadPrecio" value="${item.unidadPrecio}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/UnidadPrecio/EliminarUnidadPrecio.jsp">
                               <input type="hidden" name="idUnidadPrecio" value="${item. idUnidadPrecio}" /> 
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
        </script>
    </body>
</html>
