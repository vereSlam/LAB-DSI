/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author A21-PC26
 */
public class ViewModelEmpleado {

    private int idEmpleado;
    private String nombresEmpleado;
    private String apellidosEmpleado;
    private String DUI;
    private int ISSS;
    private String telefono;
    private String email;
    private Date fechaNac;
    private Date fechaContratacion;
    private float salario;
    private int idCargo;
    private int idDireccion;

    public ViewModelEmpleado() {
    }

    public ViewModelEmpleado(String nombresEmpleado, String apellidosEmpleado, String DUI, int ISSS, String telefono, String email, Date fechaNac, Date fechaContratacion, float salario, int idCargo, int idDireccion) {
        this.nombresEmpleado = nombresEmpleado;
        this.apellidosEmpleado = apellidosEmpleado;
        this.DUI = DUI;
        this.ISSS = ISSS;
        this.telefono = telefono;
        this.email = email;
        this.fechaNac = fechaNac;
        this.fechaContratacion = fechaContratacion;
        this.salario = salario;
        this.idCargo = idCargo;
        this.idDireccion = idDireccion;
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

    public void setNombresEmpleado(String nombresEmpleado) {
        this.nombresEmpleado = nombresEmpleado;
    }

    public String getApellidosEmpleado() {
        return apellidosEmpleado;
    }

    public void setApellidosEmpleado(String apellidosEmpleado) {
        this.apellidosEmpleado = apellidosEmpleado;
    }

    public String getDUI() {
        return DUI;
    }

    public void setDUI(String DUI) {
        this.DUI = DUI;
    }

    public int getISSS() {
        return ISSS;
    }

    public void setISSS(int ISSS) {
        this.ISSS = ISSS;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }

    public Date getFechaContratacion() {
        return fechaContratacion;
    }

    public void setFechaContratacion(Date fechaContratacion) {
        this.fechaContratacion = fechaContratacion;
    }

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    public int getIdCargo() {
        return idCargo;
    }

    public void setIdCargo(int idCargo) {
        this.idCargo = idCargo;
    }

    public int getIdDireccion() {
        return idDireccion;
    }

    public void setIdDireccion(int idDireccion) {
        this.idDireccion = idDireccion;
    }
 

}
