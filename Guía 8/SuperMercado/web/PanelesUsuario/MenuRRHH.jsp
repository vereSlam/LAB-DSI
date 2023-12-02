<%-- 
    Document   : MenuRRHH
    Created on : 26 nov 2023, 22:43:14
    Author     : verri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Menú RRHH</title>
    </head>
     <body>
        <nav>
            <ul>
                <li><a href="/SuperMercado" class="inicio">Inicio del sistema del SuperMercado</a></li>
                <li><a href="/SuperMercado?accion=Login" class="Login">Login</a></li>
                <li><a href="/SuperMercado?accion=GestionarCargos">Gestion de Cargos</a></li>
                <li><a href="/SuperMercado?accion=GestionarDirecciones">Gestion de Direcciones</a></li>
                <li><a href="/SuperMercado?accion=GestionarEmpleados">Gestion de Empleados</a></li>
                <!--<li><a href="/SuperMercado?accion="></a></li>-->
            </ul>
        </nav>
    </body>
</html>
