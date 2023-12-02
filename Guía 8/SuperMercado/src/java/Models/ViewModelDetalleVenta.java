/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;
import java.math.BigDecimal;

/**
 *
 * @author verri
 */
public class ViewModelDetalleVenta {
    private int idDetallesVenta;
    private int idVenta;
    private String nombreEmpleado;
    private String nombreCliente;
    private int idProducto;
    private String nombreProducto;
    private int cantidadVendida;
    private float subTotal;
    private BigDecimal montoTotal;
    private int idMetodoPago;
    private String nombreMetodoPago;

    public ViewModelDetalleVenta() {
    }

    public ViewModelDetalleVenta(int idDetallesVenta, int idVenta, String nombreEmpleado, String nombreCliente, int idProducto, String nombreProducto, int cantidadVendida, float subTotal, BigDecimal montoTotal, int idMetodoPago, String nombreMetodoPago) {
        this.idDetallesVenta = idDetallesVenta;
        this.idVenta = idVenta;
        this.nombreEmpleado = nombreEmpleado;
        this.nombreCliente = nombreCliente;
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.cantidadVendida = cantidadVendida;
        this.subTotal = subTotal;
        this.montoTotal = montoTotal;
        this.idMetodoPago = idMetodoPago;
        this.nombreMetodoPago = nombreMetodoPago;
    }

    public int getIdDetallesVenta() {
        return idDetallesVenta;
    }

    public void setIdDetallesVenta(int idDetallesVenta) {
        this.idDetallesVenta = idDetallesVenta;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public String getNombreEmpleado() {
        return nombreEmpleado;
    }

    public void setNombreEmpleado(String nombreEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getCantidadVendida() {
        return cantidadVendida;
    }

    public void setCantidadVendida(int cantidadVendida) {
        this.cantidadVendida = cantidadVendida;
    }

    public float getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }

    public BigDecimal getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(BigDecimal montoTotal) {
        this.montoTotal = montoTotal;
    }

    public int getIdMetodoPago() {
        return idMetodoPago;
    }

    public void setIdMetodoPago(int idMetodoPago) {
        this.idMetodoPago = idMetodoPago;
    }

    public String getNombreMetodoPago() {
        return nombreMetodoPago;
    }

    public void setNombreMetodoPago(String nombreMetodoPago) {
        this.nombreMetodoPago = nombreMetodoPago;
    }
}
