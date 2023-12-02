
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <title>Gestionar Empleados</title>
    </head>
    <body id="gestionar">
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <h2>Conexion: ${mensaje_conexion}</h2>
        
          <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <div>
        <a href="/SuperMercado?accion=AgregarEmpleado">Agregar empleado</a><br><br>
        <button class="boton" onclick="regresar()">Regresar</button>
        </div>
        <table border="1" class="tabla">
            <thead>
                <tr>
                    <th>IdEmpleado</th>
                    <th>NombresEmpleado</th>
                    <th>ApellidosEmpleado</th>
                    <th>DUI</th>
                    <th>ISSS</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <td><c:out value="${item.nombresEmpleado}" /></td>
                        <td><c:out value="${item.apellidosEmpleado}" /></td>
                        <td><c:out value="${item.DUI}" /></td>
                        <td><c:out value="${item.ISSS}" /></td> 
                        <!--<td><c:out value="${item.telefono}" /></td> -->
                        <!--<td><c:out value="${item.email}" /></td>  -->
                        <!--<td><c:out value="${item.fechaNac}" /></td> -->
                        <!--<td><c:out value="${item.fechaContratacion}" /></td> -->
                        <!--<td><c:out value="${item.salario}" /></td> -->
                        <!--<td><c:out value="${item.idCargo}" /></td> -->
                        <!--<td><c:out value="${item.cargo}" /></td> -->
                        <!--<td><c:out value="${item.idDireccion}" /></td> -->
                        <!--<td><c:out value="${item.direccionCompleta}" /></td> -->
                        
                         <!-- AÑADIR OPCIONES DE DETALLES, MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick="mostrarDetallesEmpleados(
                                                '${item.idEmpleado}',
                                                '${item.nombresEmpleado}',
                                                '${item.apellidosEmpleado}',
                                                '${item.DUI}',
                                                '${item.ISSS}',
                                                '${item.telefono}',
                                                '${item.email}',
                                                '${item.fechaNac}',
                                                '${item.fechaContratacion}',
                                                '${item.salario}',
                                                '${item.cargo}',
                                                '${item.direccionCompleta}'
                                                )">Ver detalles
                            </button>
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>IdEmpleado: <span id="idEmpleado"></span></label><br>
                                <label>NombresEmpleado: <span id="nombresEmpleado"></span></label><br>
                                <label>ApellidosEmpleado: <span id="apellidosEmpleado"></span></label><br>
                                <label>DUI: <span id="DUI"></span></label><br>
                                <label>ISSS: <span id="ISSS"></span></label><br>
                                <label>Telefono: <span id="telefono"></span></label><br>
                                <label>Email: <span id="email"></span></label><br>
                                <label>FechaNac: <span id="fechaNac"></span></label><br>
                                <label>FechaContratacion: <span id="fechaContratacion"></span></label><br>
                                <label>Salario: <span id="salario"></span></label><br>
                                <label>Cargo: <span id="cargo"></span></label><br>
                                <label>DireccionCompleta: <span id="direccionCompleta"></span></label><br><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Empleado/ModificarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" /> 
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="DUI" value="${item.DUI}" />
                                <input type="hidden" name="ISSS" value="${item.ISSS}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="fechaContratacion" value="${item.fechaContratacion}" />
                                <input type="hidden" name="salario" value="${item.salario}" />
                                <input type="hidden" name="idCargo" value="${item.idCargo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" class="bt" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SuperMercado/OpcionesUsuario/Empleado/EliminarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item. idEmpleado}" /> 
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="DUI" value="${item.DUI}" />
                                <input type="hidden" name="ISSS" value="${item.ISSS}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="fechaContratacion" value="${item.fechaContratacion}" />
                                <input type="hidden" name="salario" value="${item.salario}" />
                                <input type="hidden" name="cargo" value="${item.cargo}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />
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
            function mostrarDetallesEmpleados(idEmpleado, nombresEmpleado, apellidosEmpleado, DUI, ISSS, telefono, email, fechaNac, fechaContratacion, salario, cargo, direccionCompleta) {
                document.getElementById('idEmpleado').textContent = idEmpleado;
                document.getElementById('nombresEmpleado').textContent = nombresEmpleado;
                document.getElementById('apellidosEmpleado').textContent = apellidosEmpleado;
                document.getElementById('DUI').textContent = DUI;
                document.getElementById('ISSS').textContent = ISSS;
                document.getElementById('telefono').textContent = telefono;
                document.getElementById('email').textContent = email;
                document.getElementById('fechaNac').textContent = fechaNac;
                document.getElementById('fechaContratacion').textContent = fechaContratacion;
                document.getElementById('salario').textContent = salario;
                document.getElementById('cargo').textContent = cargo;
                document.getElementById('direccionCompleta').textContent = direccionCompleta;
                // Muestra el pop-up
                abrirPopup();
            }
        </script>
    </body>
</html>