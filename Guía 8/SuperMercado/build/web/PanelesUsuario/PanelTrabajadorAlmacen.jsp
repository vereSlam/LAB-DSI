<%-- 
    Document   : PanelTrabajadorAlmacen
    Created on : 26 nov 2023, 22:04:20
    Author     : verri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>PanelTrabajadorAlmacen</title>
    </head>
    <body id="panel">
      <div class="header">
        <div><h1 class="title">SISTEMA DEL SUPERMERCADO</h1></div>
        <%-- Directiva Page --%>
        <% String usuario = request.getParameter("tfUsuario"); %>
        <div><h2 class="sesion"><strong>¡Bienvenido, <%= usuario %>!</strong></h2></div>
      </div>
        <%-- Directiva Include --%>
        <div><h3 class="bienvenida">Bienvenido al Sistema del SuperMercado</h3></div>
    <div class="opciones">Menú de Opciones</div>
    <div>
        <%@include file="MenuTrabajadorAlmacen.jsp" %>
    </div>
    <div>
        <%@include file="Footer.html" %>
    </div>
    </body>
</html>
