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
    private int idDescuento;

    public ViewModelAsignacionDescuentoProducto() {
    }

    public ViewModelAsignacionDescuentoProducto(int idAsignacionDescuentoProducto, int idProducto, int idDescuento) {
        this.idAsignacionDescuentoProducto = idAsignacionDescuentoProducto;
        this.idProducto = idProducto;
        this.idDescuento = idDescuento;
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

    public int getIdDescuento() {
        return idDescuento;
    }

    public void setIdDescuento(int idDescuento) {
        this.idDescuento = idDescuento;
    }
}
