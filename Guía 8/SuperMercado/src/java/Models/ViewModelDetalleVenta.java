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
    private int idProducto;
    private int cantidadVendida;
    private float subTotal;
    private BigDecimal montoTotal;
    private int idMetodoPago;

    public ViewModelDetalleVenta() {
    }

    public ViewModelDetalleVenta(int idDetallesVenta, int idVenta, int idProducto, int cantidadVendida, float subTotal, BigDecimal montoTotal, int idMetodoPago) {
        this.idDetallesVenta = idDetallesVenta;
        this.idVenta = idVenta;
        this.idProducto = idProducto;
        this.cantidadVendida = cantidadVendida;
        this.subTotal = subTotal;
        this.montoTotal = montoTotal;
        this.idMetodoPago = idMetodoPago;
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

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
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
    
    
}
