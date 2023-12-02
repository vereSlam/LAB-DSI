<%-- 
    Document   : ModificarSubCategoria
    Created on : 19 nov 2023, 01:03:04
    Author     : fancu
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Modificar Subcategoria</title>
    </head>
    <body>
        <h1>Modificar Subcategoria</h1>
        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=ModificarSubCategoria">
            <div>
                <label>idSubCategoria:</label>
                <input type="text" name="idSubCategoria" id="idSubCategoria" value="${param.idSubCategoria}" readonly /><br>
                <label>idCategoria:</label>
                <input type="text" name="idCategoria" id="idCategoria" value="${param.idCategoria}" required /><br>
                <label>subCategoria:</label>
                <input type="text" name="subCategoria" id="subCategoria" value="${param.subCategoria}" required /><br><br>  
                <input type="submit" class="botn" value="Modificar" onclick="return confirm('¿Desea modificar la subcategoria?')" /><br><br> 
            </div>
            <div>
                <a class="botn" href="/SuperMercado/?accion=GestionarSubcategorias">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>