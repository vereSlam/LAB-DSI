/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author verri
 */
public class ViewModelDireccion {
    private int idDireccion;
    private String linea1;
    private String linea2;
    private int codigoPostal;
    private String idDistrito;

    public ViewModelDireccion() {
    }

    public ViewModelDireccion(int idDireccion, String linea1, String linea2, int codigoPostal, String idDistrito) {
        this.idDireccion = idDireccion;
        this.linea1 = linea1;
        this.linea2 = linea2;
        this.codigoPostal = codigoPostal;
        this.idDistrito = idDistrito;
    }

    public int getIdDireccion() {
        return idDireccion;
    }

    public void setIdDireccion(int idDireccion) {
        this.idDireccion = idDireccion;
    }

    public String getLinea1() {
        return linea1;
    }

    public void setLinea1(String linea1) {
        this.linea1 = linea1;
    }

    public String getLinea2() {
        return linea2;
    }

    public void setLinea2(String linea2) {
        this.linea2 = linea2;
    }

    public int getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getIdDistrito() {
        return idDistrito;
    }

    public void setIdDistrito(String idDistrito) {
        this.idDistrito = idDistrito;
    }
    
    
}
