/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;
import java.util.Date;
import java.sql.Time;
/**
 *
 * @author verri
 */
public class ViewModelVenta {
    private int idVenta;
    private int idEmpleado;
    private int idCliente;
    private Date fechaVenta;
    private Time HoraVenta;
    
    public ViewModelVenta() {
    }

    public ViewModelVenta(int idVenta, int idEmpleado, int idCliente, Date fechaVenta) {
        this.idVenta = idVenta;
        this.idEmpleado = idEmpleado;
        this.idCliente = idCliente;
        this.fechaVenta = fechaVenta;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public Time getHoraVenta() {
        return HoraVenta;
    }

    public void setHoraVenta(Time HoraVenta) {
        this.HoraVenta = HoraVenta;
    }
    
}
