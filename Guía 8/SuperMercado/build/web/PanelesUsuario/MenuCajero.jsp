<%-- 
    Document   : MenuCajero
    Created on : 26 nov 2023, 22:41:57
    Author     : verri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Menú Cajero</title>
    </head>
     <body>
        <nav>
            <ul>
                <li><a href="/SuperMercado" class="inicio">Inicio del sistema del SuperMercado</a></li>
                <li><a href="/SuperMercado?accion=Login" class="Login">Login</a></li>
                <li><a href="/SuperMercado?accion=GestionarClientes">Gestion de Clientes</a></li>
                <li><a href="/SuperMercado?accion=GestionarDetallesVentas">Gestion de Detalles de Ventas</a></li>
                <li><a href="/SuperMercado?accion=GestionarVentas">Gestion de Ventas</a></li>
                <!--<li><a href="/SuperMercado?accion="></a></li>-->
            </ul>
        </nav>
    </body>
</html>
