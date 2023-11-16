<%-- 
    Document   : GestionarCargos
    Created on : 8 nov 2023, 20:42:02
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Cargos</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Cargos</h1>
        <h2>Listado de Cargos</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarCargo">Agregar cargo</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idCargo</th>
                    <th>Cargo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCargos}" var="item">
                    <tr>
                        <td><c:out value="${item.idCargo}" /></td>
                        <td><c:out value="${item.cargo}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Cargo/ModificarCargo.jsp">
                                <input type="hidden" name="idCargo" value="${item. idCargo}" /> 
                                <input type="hidden" name="cargo" value="${item.cargo}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Cargo/EliminarCargo.jsp">
                                <input type="hidden" name="idCargo" value="${item. idCargo}" /> 
                                <input type="hidden" name="cargo" value="${item.cargo}" />
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
