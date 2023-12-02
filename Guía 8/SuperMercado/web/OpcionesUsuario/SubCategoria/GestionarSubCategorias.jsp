<%-- 
    Document   : GestionarSubCategorias
    Created on : 8 nov 2023, 21:58:23
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar SubCategorias</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de SubCategorias</h1>
        <h2>Listado de SubCategorias</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarSubCategoria">Agregar SubCategoria</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdSubCategoria</th>
                    <th>Categoria</th>
                    <th>subCategoria</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaSubCategorias}" var="item">
                    <tr>
                        <td><c:out value="${item.idSubCategoria}" /></td>
                        <!--<td><c:out value="${item.idCategoria}" /></td> -->
                        <td><c:out value="${item.categoria}" /></td>
                        <td><c:out value="${item.subCategoria}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/SubCategoria/ModificarSubCategoria.jsp">
                                <input type="hidden" name="idSubCategoria" value="${item. idSubCategoria}" /> 
                                <input type="hidden" name="idCategoria" value="${item.idCategoria}" />
                                <input type="hidden" name="subCategoria" value="${item.subCategoria}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/SubCategoria/EliminarSubCategoria.jsp">
                               <input type="hidden" name="idSubCategoria" value="${item. idSubCategoria}" /> 
                                <input type="hidden" name="categoria" value="${item.categoria}" />
                                <input type="hidden" name="subCategoria" value="${item.subCategoria}" />
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
