/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;


public class ViewModelUnitPrecios {
    private int idUnidadPrecio; 
    private String unidadPrecio;

    public ViewModelUnitPrecios() {
    }

    public ViewModelUnitPrecios(int idUnidadPrecio, String unidadPrecio) {
        this.idUnidadPrecio = idUnidadPrecio;
        this.unidadPrecio = unidadPrecio;
    }

    public int getIdUnidadPrecio() {
        return idUnidadPrecio;
    }

    public void setIdUnidadPrecio(int idUnidadPrecio) {
        this.idUnidadPrecio = idUnidadPrecio;
    }

    public String getUnidadPrecio() {
        return unidadPrecio;
    }

    public void setUnidadPrecio(String unidadPrecio) {
        this.unidadPrecio = unidadPrecio;
    }

   
}
