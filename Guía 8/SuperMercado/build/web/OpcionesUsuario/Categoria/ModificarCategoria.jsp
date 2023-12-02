<%-- 
    Document   : ModificarCategoria
    Created on : 16 nov 2023, 21:05:45
    Author     : fancu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Categoria</title>
    </head>
    <body class="agg">
        <h1>Modificar Categoria</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarCategoria">
            <div>
                <label>idCategoria:</label>
                <input type="text" name="idCategoria" id="idCategoria" value="${param.idCategoria}" readonly /><br>
                <label>Categoria:</label>
                <input type="text" name="categoria" id="categoria" value="${param.categoria}" required /><br><br>          
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar la categoria?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarCategorias">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>