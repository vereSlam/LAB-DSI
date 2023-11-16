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
public class ViewModelCantidadStock {
    private int idCantidadStock;
    private int idCompra;
    private int cantidad;
    private Date fechaEntrada;

    public ViewModelCantidadStock() {
    }

    public ViewModelCantidadStock(int idCantidadStock, int idCompra, int cantidad, Date fechaEntrada) {
        this.idCantidadStock = idCantidadStock;
        this.idCompra = idCompra;
        this.cantidad = cantidad;
        this.fechaEntrada = fechaEntrada;
    }

    public int getIdCantidadStock() {
        return idCantidadStock;
    }

    public void setIdCantidadStock(int idCantidadStock) {
        this.idCantidadStock = idCantidadStock;
    }

    public int getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Date getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }
}
