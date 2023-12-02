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
    private String nombreProveedor;
    private int idEmpleado;
    private String nombresEmpleado;
    private int idProducto;
    private String nombreProducto;
    private Date fechaCompra;
    private float montoTotal;

    public ViewModelCompra() {
    }

    public ViewModelCompra(int idCompra, int idProveedor, String nombreProveedor, int idEmpleado, String nombresEmpleado, int idProducto, String nombreProducto, Date fechaCompra, float montoTotal) {
        this.idCompra = idCompra;
        this.idProveedor = idProveedor;
        this.nombreProveedor = nombreProveedor;
        this.idEmpleado = idEmpleado;
        this.nombresEmpleado = nombresEmpleado;
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
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

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getNombresEmpleado() {
        return nombresEmpleado;
    }

    public void setNombresEmpleado(String nombreEmpleado) {
        this.nombresEmpleado = nombreEmpleado;
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
