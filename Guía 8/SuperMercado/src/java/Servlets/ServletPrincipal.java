/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;

import Models.ViewModelEmpleado;
import Models.ViewModelAsignacionDescuentoProducto;
import Models.ViewModelCargo;
import Models.ViewModelCliente;
import Models.ViewModelCompra;
import Models.ViewModelDetalleVenta;
import Models.ViewModelDireccion;
import Models.ViewModelInventario;
import Models.ViewModelMetodoPago;
import Models.ViewModelVenta;
import Models.ViewModelCantidadStock;

import java.util.ArrayList;

public class ServletPrincipal extends HttpServlet {

    private final String usuario = "login_admin_carloscas";
    private final String contrasenia = "root";
    private final String servidor = "localhost:1433";
    private final String bd = "SuperMercado";
    
    String url = "jdbc:sqlserver://"
            + servidor
            + ";databaseName= " + bd
            + ";user= " + usuario
            + ";password= " + contrasenia
            + ";encrypt=false;trustServerCertificate=false;";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    // ASIGNACION DESCUENTO PRODUCTO
    public void mostrarAsignacionDescuentoProducto(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from AsignacionDescuentoProducto";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelAsignacionDescuentoProducto> listaAsignacionDescuentoProducto = new ArrayList<>();
                while (rs.next()) {
                    ViewModelAsignacionDescuentoProducto asignacionDescuentoProducto = new ViewModelAsignacionDescuentoProducto();
                    asignacionDescuentoProducto.setIdAsignacionDescuentoProducto(rs.getInt("idAsignacionDescuentoProducto"));
                    asignacionDescuentoProducto.setIdProducto(rs.getInt("idProducto"));
                    asignacionDescuentoProducto.setIdDescuento(rs.getInt("idDescuento"));
                    listaAsignacionDescuentoProducto.add(asignacionDescuentoProducto);
                }               
                request.setAttribute("listaAsignacionDescuentoProducto", listaAsignacionDescuentoProducto);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarAsignacionDescuentoProducto(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String idProducto = request.getParameter("idProducto");
        String idDescuento = request.getParameter("idDescuento");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into AsignacionDescuentoProducto values (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idProducto);
                pstmt.setString(2, idDescuento);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarAsignacionDescuentoProducto(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idAsignacionDescuentoProducto = request.getParameter("idAsignacionDescuentoProducto");
        String idProducto = request.getParameter("idProducto");
        String idDescuento = request.getParameter("idDescuento");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update AsignacionDescuentoProducto set "
                 + "idProducto='"+idProducto+"', "
                 + "idDescuento='"+idDescuento+"' " 
                 + "where idAsignacionDescuentoProducto='"+idAsignacionDescuentoProducto+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarAsignacionDescuentoProducto(HttpServletRequest request, HttpServletResponse response) {
        String idAsignacionDescuentoProducto = request.getParameter("idAsignacionDescuentoProducto");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from AsignacionDescuentoProducto where idAsignacionDescuentoProducto='" + idAsignacionDescuentoProducto + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // CANTIDAD STOCK
    public void mostrarCantidadStock(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from CantidadStock";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCantidadStock> listaCantidadStock = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCantidadStock cantidadStock = new ViewModelCantidadStock();
                    cantidadStock.setIdCantidadStock(rs.getInt("idCantidadStock"));
                    cantidadStock.setIdCompra(rs.getInt("idCompra"));
                    cantidadStock.setCantidad(rs.getInt("cantidad"));
                    cantidadStock.setFechaEntrada(rs.getDate("fechaEntrada"));
                    listaCantidadStock.add(cantidadStock);
                }               
                request.setAttribute("listaCantidadStock", listaCantidadStock);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarCantidadStock(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String idCompra = request.getParameter("idCompra");
        String cantidad = request.getParameter("cantidad");
        String fechaEntrada = request.getParameter("fechaEntrada");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into CantidadStock values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idCompra);
                pstmt.setString(2, cantidad);
                pstmt.setString(3, fechaEntrada);

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarCantidadStock(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCantidadStock = request.getParameter("idCantidadStock");
        String idCompra = request.getParameter("idCompra");
        String cantidad = request.getParameter("cantidad");
        String fechaEntrada = request.getParameter("fechaEntrada");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update CantidadStock set "
                 + "idCompra='"+idCompra+"', " 
                 + "cantidad='"+cantidad+"', "
                 + "fechaEntrada='"+fechaEntrada+"' " 
                 + "where idCantidadStock='"+idCantidadStock+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarCantidadStock(HttpServletRequest request, HttpServletResponse response) {
        String idCantidadStock = request.getParameter("idCantidadStock");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from CantidadStock where idCantidadStock='" + idCantidadStock + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // CARGOS
    public void mostrarCargos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Cargos";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCargo> listaCargos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCargo cargo = new ViewModelCargo();
                    cargo.setIdCargo(rs.getInt("idCargo"));
                    cargo.setCargo(rs.getString("cargo"));
                    listaCargos.add(cargo);
                }               
                request.setAttribute("listaCargos", listaCargos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarCargo(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String cargo = request.getParameter("cargo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Cargos values (?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, cargo);

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarCargo(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCargo = request.getParameter("idCargo");
        String cargo = request.getParameter("cargo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Cargos set "
                 + "cargo='"+cargo+"'"
                 + "where idCargo='"+idCargo+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarCargo(HttpServletRequest request, HttpServletResponse response) {
        String idCargo = request.getParameter("idCargo");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Cargos where idCargo='" + idCargo + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // CLIENTES
    public void mostrarClientes(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Clientes";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCliente> listaClientes = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCliente cliente = new ViewModelCliente();
                    cliente.setIdCliente(rs.getInt("idCliente"));
                    cliente.setNombresCliente(rs.getString("nombresCliente"));
                    cliente.setApellidosCliente(rs.getString("apellidosCliente"));
                    cliente.setTelefono(rs.getString("telefono"));
                    cliente.setEmail(rs.getString("email"));
                    cliente.setDUI(rs.getString("DUI"));
                    cliente.setIdDireccion(rs.getInt("idDireccion"));
                    listaClientes.add(cliente);
                }               
                request.setAttribute("listaClientes", listaClientes);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String nombresCliente = request.getParameter("nombresCliente");
        String apellidosCliente = request.getParameter("apellidosCliente");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String DUI = request.getParameter("DUI");
        String idDireccion = request.getParameter("idDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Clientes values (?,?,?,?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombresCliente);
                pstmt.setString(2, apellidosCliente);
                pstmt.setString(3, telefono);
                pstmt.setString(4, email);
                pstmt.setString(5, DUI);
                pstmt.setString(6, idDireccion);
                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCliente = request.getParameter("idCliente");
        String nombresCliente = request.getParameter("nombresCliente");
        String apellidosCliente = request.getParameter("apellidosCliente");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String DUI = request.getParameter("DUI");
        String idDireccion = request.getParameter("idDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Clientes set "
                 + "nombresCliente='"+nombresCliente+"', "
                 + "apellidosCliente='"+apellidosCliente+"', "
                 + "telefono='"+telefono+"', "
                 + "email='"+email+"', "
                 + "DUI='"+DUI+"', "
                 + "idDireccion='"+idDireccion+"'"
                 + "where idCliente='"+idCliente+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) {
        String idCliente = request.getParameter("idCliente");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Clientes where idCliente='" + idCliente + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // COMPRAS
    public void mostrarCompras(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Compras";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCompra> listaCompras = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCompra compra = new ViewModelCompra();
                    compra.setIdCompra(rs.getInt("idCompra"));
                    compra.setIdProveedor(rs.getInt("idProveedor"));
                    compra.setIdEmpleado(rs.getInt("idEmpleado"));
                    compra.setIdProducto(rs.getInt("idProducto"));
                    compra.setFechaCompra(rs.getDate("fechaCompra"));
                    compra.setMontoTotal(rs.getFloat("montoTotal"));
                    listaCompras.add(compra);
                }               
                request.setAttribute("listaCompras", listaCompras);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String idProveedor = request.getParameter("idProveedor");
        String idEmpleado = request.getParameter("idEmpleado");
        String idProducto = request.getParameter("idProducto");
        String fechaCompra = request.getParameter("fechaCompra");
        String montoTotal = request.getParameter("montoTotal");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Compras values (?,?,?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idProveedor);
                pstmt.setString(2, idEmpleado);
                pstmt.setString(3, idProducto);
                pstmt.setString(4, fechaCompra);
                pstmt.setString(5, montoTotal);
                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCompra = request.getParameter("idCompra");
        String idProveedor = request.getParameter("idProveedor");
        String idEmpleado = request.getParameter("idEmpleado");
        String idProducto = request.getParameter("idProducto");
        String fechaCompra = request.getParameter("fechaCompra");
        String montoTotal = request.getParameter("montoTotal");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Compras set "
                 + "idProveedor='"+idProveedor+"', "
                 + "idEmpleado='"+idEmpleado+"', "
                 + "idProducto='"+idProducto+"', "
                 + "fechaCompra='"+fechaCompra+"', "
                 + "montoTotal='"+montoTotal+"'"
                 + "where idCompra='"+idCompra+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarCompra(HttpServletRequest request, HttpServletResponse response) {
        String idCompra = request.getParameter("idCompra");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Compras where idCompra='" + idCompra + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // DETALLES VENTAS
    public void mostrarDetallesVentas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from DetallesVentas";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDetalleVenta> listaDetallesVentas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDetalleVenta detalleVenta = new ViewModelDetalleVenta();
                    detalleVenta.setIdDetallesVenta(rs.getInt("idDetallesVenta"));
                    detalleVenta.setIdVenta(rs.getInt("idVenta"));
                    detalleVenta.setIdProducto(rs.getInt("idProducto"));
                    detalleVenta.setCantidadVendida(rs.getInt("cantidadVendida"));
                    detalleVenta.setSubTotal(rs.getFloat("subTotal"));
                    detalleVenta.setMontoTotal(rs.getBigDecimal("montoTotal"));
                    detalleVenta.setIdMetodoPago(rs.getInt("idMetodoPago"));

                    listaDetallesVentas.add(detalleVenta);
                }               
                request.setAttribute("listaDetallesVentas", listaDetallesVentas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarDetalleVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String idVenta = request.getParameter("idVenta");
        String idProducto = request.getParameter("idProducto");
        String cantidadVendida = request.getParameter("cantidadVendida");
        String subTotal = request.getParameter("subTotal");
        String montoTotal = request.getParameter("montoTotal");
        String idMetodoPago = request.getParameter("idMetodoPago");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into DetallesVentas values (?,?,?,?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idVenta);
                pstmt.setString(2, idProducto);
                pstmt.setString(3, cantidadVendida);
                pstmt.setString(4, subTotal);
                pstmt.setString(5, montoTotal);
                pstmt.setString(5, idMetodoPago);

                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarDetalleVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idDetallesVenta = request.getParameter("idDetallesVenta");
        String idVenta = request.getParameter("idVenta");
        String idProducto = request.getParameter("idProducto");
        String cantidadVendida = request.getParameter("cantidadVendida");
        String subTotal = request.getParameter("subTotal");
        String montoTotal = request.getParameter("montoTotal");
        String idMetodoPago = request.getParameter("idMetodoPago");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update DetallesVenta set "
                 + "idVenta='"+idVenta+"', "
                 + "idProducto='"+idProducto+"', "
                 + "cantidadVendida='"+cantidadVendida+"', "
                 + "subTotal='"+subTotal+"', "
                 + "montoTotal='"+montoTotal+"', "
                 + "idMetodoPago='"+idMetodoPago+"'"
                 + "where idDetalleVenta='"+idDetallesVenta+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarDetalleVenta(HttpServletRequest request, HttpServletResponse response) {
        String idDetallesVenta = request.getParameter("idDetallesVenta");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from DetallesVentas where idDetallesVenta='" + idDetallesVenta + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // DIRECCIONES
    public void mostrarDirecciones(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Direcciones";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDireccion> listaDirecciones = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDireccion direccion = new ViewModelDireccion();
                    direccion.setIdDireccion(rs.getInt("idDireccion"));
                    direccion.setLinea1(rs.getString("linea1"));
                    direccion.setLinea2(rs.getString("linea2"));
                    direccion.setCodigoPostal(rs.getInt("codigoPostal"));
                    direccion.setIdDistrito(rs.getString("idDistrito"));

                    listaDirecciones.add(direccion);
                }               
                request.setAttribute("listaDirecciones", listaDirecciones);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarDireccion(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String linea1 = request.getParameter("linea1");
        String linea2 = request.getParameter("linea2");
        String codigoPostal = request.getParameter("codigoPostal");
        String idDistrito = request.getParameter("idDistrito");
       
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Direcciones values (?,?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, linea1);
                pstmt.setString(2, linea2);
                pstmt.setString(3, codigoPostal);
                pstmt.setString(4, idDistrito);
                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarDireccion(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idDireccion = request.getParameter("idDireccion");
        String linea1 = request.getParameter("linea1");
        String linea2 = request.getParameter("linea2");
        String codigoPostal = request.getParameter("codigoPostal");
        String idDistrito = request.getParameter("idDistrito");
       
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Direcciones set "
                 + "linea1='"+linea1+"', "
                 + "linea2='"+linea2+"', "
                 + "codigoPostal='"+codigoPostal+"', "
                 + "idDistrito='"+idDistrito+"'"
                 + "where idDireccion='"+idDireccion+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarDireccion(HttpServletRequest request, HttpServletResponse response) {
        String idDireccion = request.getParameter("idDireccion");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Direcciones where idDireccion='" + idDireccion + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // INVENTARIOS
    public void mostrarInventarios(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Inventarios";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelInventario> listaInventarios = new ArrayList<>();
                while (rs.next()) {
                    ViewModelInventario inventario = new ViewModelInventario();
                    inventario.setIdInventario(rs.getInt("idInventario"));
                    inventario.setIdCantidadStock(rs.getInt("idCantidadStock"));
                    inventario.setCantExist(rs.getInt("cantExist"));
                    inventario.setFechaActualizacion(rs.getDate("fechaActualizacion"));
                    listaInventarios.add(inventario);
                }               
                request.setAttribute("listaInventarios", listaInventarios);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarInventario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String idCantidadStock = request.getParameter("idCantidadStock");
        String cantExist = request.getParameter("cantExist");
        String fechaActualizacion = request.getParameter("fechaActualizacion");
      
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Inventarios values (?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idCantidadStock);
                pstmt.setString(2, cantExist);
                pstmt.setString(3, fechaActualizacion);
                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarInventario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idInventario = request.getParameter("idInventario");
        String idCantidadStock = request.getParameter("idCantidadStock");
        String cantExist = request.getParameter("cantExist");
        String fechaActualizacion = request.getParameter("fechaActualizacion");
      
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Inventarios set "
                 + "idCantidadStock='"+idCantidadStock+"', "
                 + "cantExist='"+cantExist+"', "
                 + "fechaActualizacion='"+fechaActualizacion+"' "
                 + "where idInventario='"+idInventario+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarInventario(HttpServletRequest request, HttpServletResponse response) {
        String idInventario = request.getParameter("idInventario");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Inventarios where idInventario='" + idInventario + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // METODO PAGO
    public void mostrarMetodoPago(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from MetodoPago";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelMetodoPago> listaMetodoPago = new ArrayList<>();
                while (rs.next()) {
                    ViewModelMetodoPago metodoPago = new ViewModelMetodoPago();
                    metodoPago.setIdMetodoPago(rs.getInt("idMetodoPago"));
                    metodoPago.setNombreMetodoPago(rs.getString("nombreMetodoPago"));
                    listaMetodoPago.add(metodoPago);
                }               
                request.setAttribute("listaMetodoPago", listaMetodoPago);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarMetodoPago(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String nombreMetodoPago = request.getParameter("nombreMetodoPago");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into MetodoPago values (?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreMetodoPago);
                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarMetodoPago(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idMetodoPago = request.getParameter("idMetodoPago");
        String nombreMetodoPago = request.getParameter("nombreMetodoPago");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update MetodoPago set "
                 + "nombreMetodoPago='"+nombreMetodoPago+"' "
                 + "where idMetodoPago='"+idMetodoPago+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarMetodoPago(HttpServletRequest request, HttpServletResponse response) {
        String idMetodoPago = request.getParameter("idMetodoPago");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from MetodoPago where idMetodoPago='" + idMetodoPago + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // VENTAS
    public void mostrarVentas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Ventas";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelVenta> listaVentas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelVenta venta = new ViewModelVenta();
                    venta.setIdVenta(rs.getInt("idVenta"));
                    venta.setIdEmpleado(rs.getInt("idEmpleado"));
                    venta.setIdCliente(rs.getInt("idCliente"));
                    venta.setFechaVenta(rs.getDate("fechaVenta"));
                    venta.setHoraVenta(rs.getTime("HoraVenta"));
                    listaVentas.add(venta);
                }               
                request.setAttribute("listaVentas", listaVentas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID es autoincrementable
        String idEmpleado = request.getParameter("idEmpleado");
        String idCliente = request.getParameter("idCliente");
        String fechaVenta = request.getParameter("fechaVenta");
        String horaVenta = request.getParameter("horaVenta");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Ventas values (?,?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idEmpleado);
                pstmt.setString(2, idCliente);
                pstmt.setString(3, fechaVenta);
                pstmt.setString(4, horaVenta);
                
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idVenta = request.getParameter("idVenta");
        String idEmpleado = request.getParameter("idEmpleado");
        String idCliente = request.getParameter("idCliente");
        String fechaVenta = request.getParameter("fechaVenta");
        String horaVenta = request.getParameter("horaVenta");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Ventas set "
                 + "idEmpleado='"+idEmpleado+"', "
                 + "idCliente='"+idCliente+"', "
                 + "fechaVenta='"+fechaVenta+"', "
                 + "horaVenta='"+horaVenta+"' "
                 + "where idVenta='"+idVenta+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarVenta(HttpServletRequest request, HttpServletResponse response) {
            String idVenta = request.getParameter("idVenta");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Ventas where idVenta='" + idVenta + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    // EMPLEADOS
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Exitosa");
                String sqlQuery = "select * from Empleados";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEmpleado> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEmpleado empleado = new ViewModelEmpleado();
                    empleado.setIdEmpleado(rs.getInt("idEmpleado"));
                    empleado.setNombresEmpleado(rs.getString("nombresEmpleado"));
                    empleado.setApellidosEmpleado(rs.getString("apellidosEmpleado"));
                    empleado.setDUI(rs.getString("DUI"));
                    empleado.setISSS(rs.getInt("ISSS"));
                    empleado.setTelefono(rs.getString("telefono"));
                    empleado.setEmail(rs.getString("email"));
                    empleado.setFechaNac(rs.getDate("fechaNac"));
                    empleado.setFechaContratacion(rs.getDate("fechaContratacion"));
                    empleado.setSalario(rs.getFloat("salario"));
                    empleado.setIdCargo(rs.getInt("idCargo"));
                    empleado.setIdDireccion(rs.getInt("idDireccion"));
                    listaEmpleados.add(empleado);
                }               
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String DUI = request.getParameter("DUI");
        String ISSS = request.getParameter("ISSS");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String fechaNac = request.getParameter("fechaNac");
        String fechaContratacion = request.getParameter("fechaContratacion");
        String salario = request.getParameter("salario");
        String idCargo = request.getParameter("idCargo");
        String idDireccion = request.getParameter("idDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Empleados values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombresEmpleado);
                pstmt.setString(2, apellidosEmpleado);
                pstmt.setString(3, DUI);
                pstmt.setString(4, ISSS);
                pstmt.setString(5, telefono);
                pstmt.setString(6, email);
                pstmt.setString(7, fechaNac);
                pstmt.setString(8, fechaContratacion);
                pstmt.setString(9, salario);
                pstmt.setString(10, idCargo);
                pstmt.setString(11, idDireccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idEmpleado = request.getParameter("idEmpleado");
        String DUI = request.getParameter("DUI");
        String ISSS = request.getParameter("ISSS");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String fechaNac = request.getParameter("fechaNac");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String fechaContratacion = request.getParameter("fechaContratacion");
        String salario = request.getParameter("salario");
        String idCargo = request.getParameter("idCargo");
        String idDireccion = request.getParameter("idDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Empleados set "
                 + "DUI='"+DUI+"', "
                 + "ISSS='"+ISSS+"', "
                 + "nombresEmpleado='"+nombresEmpleado+"', "
                 + "apellidosEmpleado='"+apellidosEmpleado+"', "
                 + "fechaNac='"+fechaNac+"', "
                 + "telefono='"+telefono+"', "
                 + "email='"+email+"', " 
                 + "fechaContratacion='"+fechaContratacion+"', " 
                 + "salario='"+salario+"', " 
                 + "idCargo='"+idCargo+"', "
                 + "idDireccion='"+idDireccion+"' " 
                 + "where idEmpleado='"+idEmpleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String idEmpleado = request.getParameter("idEmpleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Empleados where idEmpleado='" + idEmpleado + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        if(accion==null){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
         }else if(accion.equals("Login")){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
        // GESTIONAR
        else if(accion.equals("GestionarAsignacionDescuentoProducto")){
            mostrarAsignacionDescuentoProducto(request, response);
            request.getRequestDispatcher("OpcionesUsuario/AsignacionDescuentoProducto/GestionarAsignacionDescuentoProducto.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarCantidadStock")){
            mostrarCantidadStock(request, response);
            request.getRequestDispatcher("OpcionesUsuario/CantidadStock/GestionarCantidadStock.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarCargos")){
            mostrarCargos(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Cargo/GestionarCargos.jsp").forward(request, response);
        }
        /* else if(accion.equals("GestionarCategorias")){
            mostrarCategorias(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Categoria/GestionarCategorias.jsp").forward(request, response);
        } */
        else if(accion.equals("GestionarClientes")){
            mostrarClientes(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Cliente/GestionarClientes.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarCompras")){
            mostrarCompras(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Compra/GestionarCompras.jsp").forward(request, response);
        }
        /* else if(accion.equals("GestionarDescuentos")){
            mostrarDescuentos(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Descuento/GestionarDescuentos.jsp").forward(request, response);
        } */
        else if(accion.equals("GestionarDetallesVentas")){
            mostrarDetallesVentas(request, response);
            request.getRequestDispatcher("OpcionesUsuario/DetalleVenta/GestionarDetallesVentas.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarDirecciones")){
            mostrarDirecciones(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Direccion/GestionarDirecciones.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarEmpleados")){
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Empleado/GestionarEmpleados.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarInventarios")){
            mostrarInventarios(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Inventario/GestionarInventarios.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarMetodoPago")){
            mostrarMetodoPago(request, response);
            request.getRequestDispatcher("OpcionesUsuario/MetodoPago/GestionarMetodoPago.jsp").forward(request, response);
        }
        /* else if(accion.equals("GestionarProductos")){
            mostrarProductos(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Producto/GestionarProductos.jsp").forward(request, response);
        } 
        else if(accion.equals("GestionarProveedores")){
            mostrarProveedores(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Proveedor/GestionarProveedores.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarSubCategorias")){
            mostrarSubCategorias(request, response);
            request.getRequestDispatcher("OpcionesUsuario/SubCategoria/GestionarSubCategorias.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarUnidadPrecio")){
            mostrarUnidadPrecio(request, response);
            request.getRequestDispatcher("OpcionesUsuario/UnidadPrecio/GestionarUnidadPrecio.jsp").forward(request, response);
        } */
        else if(accion.equals("GestionarVentas")){
            mostrarVentas(request, response);
            request.getRequestDispatcher("OpcionesUsuario/Venta/GestionarVentas.jsp").forward(request, response);
        }
        //REDIRECCION PARA JSP DE AGREGAR
        else if (accion.equals("AgregarAsignacionDescuentoProducto")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/AsignacionDescuentoProducto/AgregarAsignacionDescuentoProducto.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarCantidadStock")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/CantidadStock/AgregarCantidadStock.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarCargo")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Cargo/AgregarCargo.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Cliente/AgregarCliente.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Compra/AgregarCompra.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarDetalleVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/DetalleVenta/AgregarDetalleVenta.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarDireccion")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Direccion/AgregarDireccion.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Empleado/AgregarEmpleado.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarInventario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Inventario/AgregarInventario.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarMetodoPago")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/MetodoPago/AgregarMetodoPago.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/Venta/AgregarVenta.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (accion.equals("Login")) {
            String usuario = request.getParameter("tfUsuario");
            String contrasenia = request.getParameter("tfContrasenia");

            try (PrintWriter print = response.getWriter()) {
                if (usuario.equals("admin") && contrasenia.equals("root")) {
                    
                    request.getRequestDispatcher("PanelesUsuario/PanelAdministrador.jsp").forward(request, response);
                } else {
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login Sistema SuperMercado</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h2>Error: La contraseña o el usuario son erróneos</h2>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }
         //CAPTURA DE DATOS ENVIADOS POR POST
         // ASIGNACION DESCUENTO PRODUCTO
        else if (accion.equals("AgregarAsignacionDescuentoProducto")) {
            agregarAsignacionDescuentoProducto(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarAsignacionDescuentoProducto");
        } else if (accion.equals("ModificarAsignacionDescuentoProducto")) {
            modificarAsignacionDescuentoProducto(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarAsignacionDescuentoProducto");
        } else if (accion.equals("EliminarAsignacionDescuentoProducto")) {
            eliminarAsignacionDescuentoProducto(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarAsignacionDescuentoProducto");
        }
        // CANTIDAD STOCK
        else if (accion.equals("AgregarCantidadStock")) {
            agregarCantidadStock(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCantidadStock");
        } else if (accion.equals("ModificarCantidadStock")) {
            modificarCantidadStock(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCantidadStock");
        } else if (accion.equals("EliminarCantidadStock")) {
            eliminarCantidadStock(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCantidadStock");
        }
        // CARGOS
        else if (accion.equals("AgregarCargo")) {
            agregarCargo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCargo");
        } else if (accion.equals("ModificarCargo")) {
            modificarCargo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCargos");
        } else if (accion.equals("EliminarCargo")) {
            eliminarCargo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCargos");
        }
        // CATEGORIAS
        // CLIENTES
        else if (accion.equals("AgregarCliente")) {
            agregarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCliente");
        } else if (accion.equals("ModificarCliente")) {
            modificarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarClientes");
        } else if (accion.equals("EliminarCliente")) {
            eliminarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarClientes");
        }
        // COMPRAS
        else if (accion.equals("AgregarCompra")) {
            agregarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCompra");
        } else if (accion.equals("ModificarCompra")) {
            modificarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCompras");
        } else if (accion.equals("EliminarCompra")) {
            eliminarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCompras");
        }
        //  DESCUENTOS
        // DETALLES VENTAS
        else if (accion.equals("AgregarDetalleVenta")) {
            agregarDetalleVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarDetalleVenta");
        } else if (accion.equals("ModificarDetalleVenta")) {
            modificarDetalleVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDetallesVentas");
        } else if (accion.equals("EliminarDetalleVenta")) {
            eliminarDetalleVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDetallesVentas");
        }
        // DIRECCIONES
        else if (accion.equals("AgregarDireccion")) {
            agregarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarDireccion");
        } else if (accion.equals("ModificarDireccion")) {
            modificarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDirecciones");
        } else if (accion.equals("EliminarDireccion")) {
            eliminarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDirecciones");
        }
         // EMPLEADOS
        else if (accion.equals("AgregarEmpleado")) { //LOS DATOS SE LE PASAN POR PARAMETRO A LA FUNCION
            agregarEmpleado(request, response);//REDIRIGE NUEVAMENTE A LA VISTA DE AGREGAR EMPLEADO
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("ModificarEmpleado")) {
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        } else if (accion.equals("EliminarEmpleado")) {
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        }
        // INVENTARIOS
        else if (accion.equals("AgregarInventario")) {
            agregarInventario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarInventario");
        } else if (accion.equals("ModificarInventario")) {
            modificarInventario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarInventarios");
        } else if (accion.equals("EliminarInventario")) {
            eliminarInventario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarInventarios");
        }
        // METODO PAGO
        else if (accion.equals("AgregarMetodoPago")) {
            agregarMetodoPago(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarMetodoPago");
        } else if (accion.equals("ModificarMetodoPago")) {
            modificarMetodoPago(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarMetodoPago");
        } else if (accion.equals("EliminarMetodoPago")) {
            eliminarMetodoPago(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarMetodoPago");
        }
        // VENTAS
        else if (accion.equals("AgregarVenta")) {
            agregarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarVenta");
        } else if (accion.equals("ModificarVenta")) {
            modificarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarVentas");
        } else if (accion.equals("EliminarVenta")) {
            eliminarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarVentas");
        }
        // PRODUCTOS
        // PROVEEDORES
        // SUB CATEGORIAS
        // UNIDAD PRECIO
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
