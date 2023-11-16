<%-- 
    Document   : EliminarCategoria
    Created on : 9 nov 2023, 21:46:33
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar Categoria</title>
    </head>
    <body>
        <h1>Eliminar Categoria</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarCategoria">
            <div>
                <label>ID Categoria: ${param.idCategoria}</label><br>
                <label>categoria: ${param.categoria}</label><br>   
                <input type="hidden" name="idCategoria" id="idCategoria" value="${param.idCategoria}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la categoria?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarCategorias">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
