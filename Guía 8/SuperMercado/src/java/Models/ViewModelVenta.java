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
    private String nombreEmpleado;
    private int idCliente;
    private String nombreCliente;
    private Date fechaVenta;
    private Time HoraVenta;
    
    public ViewModelVenta() {
    }

    public ViewModelVenta(int idVenta, int idEmpleado, String nombreEmpleado, int idCliente, String nombreCliente, Date fechaVenta, Time HoraVenta) {
        this.idVenta = idVenta;
        this.idEmpleado = idEmpleado;
        this.nombreEmpleado = nombreEmpleado;
        this.idCliente = idCliente;
        this.nombreCliente = nombreCliente;
        this.fechaVenta = fechaVenta;
        this.HoraVenta = HoraVenta;
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

    public String getNombreEmpleado() {
        return nombreEmpleado;
    }

    public void setNombreEmpleado(String nombreEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
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
