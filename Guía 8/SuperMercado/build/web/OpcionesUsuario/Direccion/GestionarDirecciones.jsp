<%-- 
    Document   : GestionarDirecciones
    Created on : 8 nov 2023, 21:27:28
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Direcciones</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Direcciones</h1>
        <h2>Listado de Direcciones</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarDireccion">Agregar direccion</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>idDireccion</th>
                    <th>Linea1</th>
                    <th>Linea2</th>
                    <th>CodigoPostal</th>
                    <th>idDistrito</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaDirecciones}" var="item">
                    <tr>
                        <td><c:out value="${item.idDireccion}" /></td>
                        <td><c:out value="${item.linea1}" /></td>
                        <td><c:out value="${item.linea2}" /></td>
                        <td><c:out value="${item.codigoPostal}" /></td>
                        <td><c:out value="${item.idDistrito}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Direccion/ModificarDireccion.jsp">
                                <input type="hidden" name="idDireccion" value="${item. idDireccion}" /> 
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="codigoPostal" value="${item.codigoPostal}" />
                                <input type="hidden" name="idDistrito" value="${item.idDistrito}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Direccion/EliminarDireccion.jsp">
                                <input type="hidden" name="idDireccion" value="${item. idDireccion}" /> 
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="codigoPostal" value="${item.codigoPostal}" />
                                <input type="hidden" name="idDistrito" value="${item.idDistrito}" />
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
