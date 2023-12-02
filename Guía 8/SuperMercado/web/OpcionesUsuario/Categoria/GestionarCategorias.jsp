<%-- 
    Document   : GestionarCategorias
    Created on : 8 nov 2023, 20:47:37
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Categorias</title>
    </head>
    <body id="gestionar">
       <h1>Gestión de Categorias</h1>
        <h2>Listado de Categorias</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarCategoria">Agregar categoria</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdCategoria</th>
                    <th>Categoria</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCategorias}" var="item">
                    <tr>
                        <td><c:out value="${item.idCategoria}" /></td>
                        <td><c:out value="${item.categoria}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Categoria/ModificarCategoria.jsp">
                                <input type="hidden" name="idCategoria" value="${item. idCategoria}" /> 
                                <input type="hidden" name="categoria" value="${item.categoria}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Categoria/EliminarCategoria.jsp">
                                <input type="hidden" name="idCategoria" value="${item. idCategoria}" /> 
                                <input type="hidden" name="categoria" value="${item.categoria}" />
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
