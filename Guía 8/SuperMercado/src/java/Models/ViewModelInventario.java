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
public class ViewModelInventario {
    private int idInventario;
    private int idCantidadStock;
    private int cantExist;
    private Date fechaActualizacion;

    public ViewModelInventario() {
    }

    public ViewModelInventario(int idInventario, int idCantidadStock, int cantExist, Date fechaActualizacion) {
        this.idInventario = idInventario;
        this.idCantidadStock = idCantidadStock;
        this.cantExist = cantExist;
        this.fechaActualizacion = fechaActualizacion;
    }

    public int getIdInventario() {
        return idInventario;
    }

    public void setIdInventario(int idInventario) {
        this.idInventario = idInventario;
    }

    public int getIdCantidadStock() {
        return idCantidadStock;
    }

    public void setIdCantidadStock(int idCantidadStock) {
        this.idCantidadStock = idCantidadStock;
    }

    public int getCantExist() {
        return cantExist;
    }

    public void setCantExist(int cantExist) {
        this.cantExist = cantExist;
    }

    public Date getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setFechaActualizacion(Date fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
    
    
}
