/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;
import java.util.Date;
/**
 *
 * @author verri
 */
public class ViewModelCompra {
    private int idCompra;
    private int idProveedor;
    private int idEmpleado;
    private int idProducto;
    private Date fechaCompra;
    private float montoTotal;

    public ViewModelCompra() {
    }

    public ViewModelCompra(int idCompra, int idProveedor, int idEmpleado, int idProducto, Date fechaCompra, float montoTotal) {
        this.idCompra = idCompra;
        this.idProveedor = idProveedor;
        this.idEmpleado = idEmpleado;
        this.idProducto = idProducto;
        this.fechaCompra = fechaCompra;
        this.montoTotal = montoTotal;
    }

    public int getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public float getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(float montoTotal) {
        this.montoTotal = montoTotal;
    }
    
    
}
