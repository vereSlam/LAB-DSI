/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author verri
 */
public class ViewModelAsignacionDescuentoProducto {
    private int idAsignacionDescuentoProducto;
    private int idProducto;
    private String nombreProducto;
    private int idDescuento;
    private String nombreDescuento;

    public ViewModelAsignacionDescuentoProducto() {
    }

    public ViewModelAsignacionDescuentoProducto(int idAsignacionDescuentoProducto, int idProducto, String nombreProducto, int idDescuento, String nombreDescuento) {
        this.idAsignacionDescuentoProducto = idAsignacionDescuentoProducto;
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.idDescuento = idDescuento;
        this.nombreDescuento = nombreDescuento;
    }

    public int getIdAsignacionDescuentoProducto() {
        return idAsignacionDescuentoProducto;
    }

    public void setIdAsignacionDescuentoProducto(int idAsignacionDescuentoProducto) {
        this.idAsignacionDescuentoProducto = idAsignacionDescuentoProducto;
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

    public int getIdDescuento() {
        return idDescuento;
    }

    public void setIdDescuento(int idDescuento) {
        this.idDescuento = idDescuento;
    }

    public String getNombreDescuento() {
        return nombreDescuento;
    }

    public void setNombreDescuento(String nombreDescuento) {
        this.nombreDescuento = nombreDescuento;
    }
}
