<%-- 
    Document   : Login
    Created on : 5 oct 2023, 10:39:44
    Author     : A22-PC-17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
   <body>
           <form method="POST" action="/SuperMercado/ServletPrincipal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>    
            <div><h1>Bienvenido al Sistema del SuperMercado</h1></div>
            <%-- Insercion de comentario Java --%>
            <%-- Forma legible --%>
            <%
                 java.util.Date fechaActual = new java.util.Date();
                 java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/YYYY");
                 String fechaActualLegible = sdf.format(fechaActual);
                 

            %>
            <p>Fecha actual: <strong><%= fechaActualLegible %></strong></p><br>
            
            <div><label>Usuario:</label></div>            
            <div><input type="text" name="tfUsuario" id="idtfUsuario"></div><br>
            <div><label>Contraseña:</label></div>
            <div><input type="password" name="tfContrasenia" id="idtfContrasenia" ></div><br>
            <div><input type="submit" value="Iniciar Sesión"></div>
        </form>  
    </body>
</html>
