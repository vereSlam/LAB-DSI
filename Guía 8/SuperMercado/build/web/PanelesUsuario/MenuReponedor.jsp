<%-- 
    Document   : MenuReponedor
    Created on : 26 nov 2023, 22:42:44
    Author     : verri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Menú Reponedor</title>
    </head>
     <body>
        <nav>
            <ul>
                <li><a href="/SuperMercado" class="inicio">Inicio del sistema del SuperMercado</a></li>
                <li><a href="/SuperMercado?accion=Login" class="Login">Login</a></li>
                <li><a href="/SuperMercado?accion=GestionarCantidadStock">Gestion de CantidadStock</a></li>
                <li><a href="/SuperMercado?accion=GestionarProductos">Gestion de Productos</a></li>
                <!--<li><a href="/SuperMercado?accion="></a></li>-->
            </ul>
        </nav>
    </body>
</html>
