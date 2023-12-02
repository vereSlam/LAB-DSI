<%-- 
    Document   : GestionarDirecciones
    Created on : 8 nov 2023, 21:27:28
    Author     : verri
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Direcciones</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Direcciones</h1>
        <h2>Listado de Direcciones</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
          <a href="/SuperMercado?accion=AgregarDireccion">Agregar direccion</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
                </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdDireccion</th>
                    <th>Linea1</th>
                    <th>Linea2</th>
                    <th>Departamento</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaDirecciones}" var="item">
                    <tr>
                        <td><c:out value="${item.idDireccion}" /></td>
                        <td><c:out value="${item.linea1}" /></td> 
                        <td><c:out value="${item.linea2}" /></td>
                        <!-- <td><c:out value="${item.distrito}" /></td> -->
                        <!-- <td><c:out value="${item.municipio}" /></td> -->
                        <td><c:out value="${item.departamento}" /></td>
                        <!-- <td><c:out value="${item.pais}" /></td> -->
                        <!-- <td><c:out value="${item.codigoPostal}" /></td> -->
                        
                         <!-- AÑADIR OPCIONES DE DETALLES, MODIFICACION Y ELIMINACION -->
                        <td>
                             <button class="open-popup-btn"
                                    onclick="mostrarDetallesDirecciones(
                                                '${item.idDireccion}',
                                                '${item.linea1}',
                                                '${item.linea2}',
                                                '${item.distrito}',
                                                '${item.municipio}',
                                                '${item.departamento}',
                                                '${item.pais}',
                                                '${item.codigoPostal}'
                                                )">Ver detalles
                            </button>
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>IdDireccion: <span id="idDireccion"></span></label><br>
                                <label>Linea1: <span id="linea1"></span></label><br>
                                <label>Linea2: <span id="linea2"></span></label><br>
                                <label>Distrito: <span id="distrito"></span></label><br>
                                <label>Municipio: <span id="municipio"></span></label><br>
                                <label>Departamento: <span id="departamento"></span></label><br>
                                <label>Pais: <span id="pais"></span></label><br>
                                <label>CodigoPostal: <span id="codigoPostal"></span></label><br><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Direccion/ModificarDireccion.jsp">
                                <input type="hidden" name="idDireccion" value="${item. idDireccion}" /> 
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="codigoPostal" value="${item.codigoPostal}" />
                                <input type="hidden" name="idDistrito" value="${item.idDistrito}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Direccion/EliminarDireccion.jsp">
                                <input type="hidden" name="idDireccion" value="${item. idDireccion}" /> 
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="distrito" value="${item.distrito}" />
                                <input type="hidden" name="municipio" value="${item.municipio}" />
                                <input type="hidden" name="departamento" value="${item.departamento}" />
                                <input type="hidden" name="pais" value="${item.pais}" />
                                <input type="hidden" name="codigoPostal" value="${item.codigoPostal}" />
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
            function abrirPopup() {
                var popup = document.getElementById('popup');
                var overlay = document.getElementById('overlay');

                if (popup.style.display === 'block') {
                    popup.style.display = 'none';
                    overlay.style.display = 'none';
                } else {
                    popup.style.display = 'block';
                    overlay.style.display = 'block';
                  }
            }
            function mostrarDetallesDirecciones(idDireccion, linea1, linea2, distrito, municipio, departamento, pais, codigoPostal) {
                document.getElementById('idDireccion').textContent = idDireccion;
                document.getElementById('linea1').textContent = linea1;
                document.getElementById('linea2').textContent = linea2;
                document.getElementById('distrito').textContent = distrito;
                document.getElementById('municipio').textContent = municipio;
                document.getElementById('departamento').textContent = departamento;
                document.getElementById('pais').textContent = pais;
                document.getElementById('codigoPostal').textContent = codigoPostal;
                // Muestra el pop-up
                abrirPopup();
            }
        </script>
    </body>
</html>
