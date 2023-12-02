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
    private String idDistrito;
    private String distrito;
    private String municipio;
    private String departamento;
    private String pais;
    private int codigoPostal;

    public ViewModelDireccion() {
    }

    public ViewModelDireccion(int idDireccion, String linea1, String linea2, String idDistrito, String distrito, String municipio, String departamento, String pais, int codigoPostal) {
        this.idDireccion = idDireccion;
        this.linea1 = linea1;
        this.linea2 = linea2;
        this.idDistrito = idDistrito;
        this.distrito = distrito;
        this.municipio = municipio;
        this.departamento = departamento;
        this.pais = pais;
        this.codigoPostal = codigoPostal;
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
    
    public String getIdDistrito() {
        return idDistrito;
    }

    public void setIdDistrito(String idDistrito) {
        this.idDistrito = idDistrito;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }
}
