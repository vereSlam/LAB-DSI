<%-- 
    Document   : EliminarSubCategoria
    Created on : 9 nov 2023, 22:26:22
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Eliminar SubCategoria</title>
    </head>
    <body>
        <h1>Eliminar SubCategoria</h1>

        <form method="POST" action="/SuperMercado/ServletPrincipal?accion=EliminarSubCategoria">
            <div>
                <label>ID SubCategoria: ${param.idSubCategoria}</label><br>
                <label>ID Categoria: ${param.idCategoria}</label><br>
                <label>SubCategoria: ${param.subCategoria}</label><br>  
                <input type="hidden" name="idSubCategoria" id="idSuCategoria" value="${param.idSubCategoria}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la SubCategoria?')" /><br><br>
            </div>
            <div>
                <a href="/SuperMercado/?accion=GestionarSubCategorias">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
