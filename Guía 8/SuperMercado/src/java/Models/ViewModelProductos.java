/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

public class ViewModelProductos {
    private int idProducto; 
    private int idSubCategoria; 
    private String subCategoria;
    private int idProveedor; 
    private String nombreProveedor;
    private String nombreProducto; 
    private String descripcion; 
    private float precioUnitario; 
    private int idUnidadPrecio; 
    private String unidadPrecio;

    public ViewModelProductos() {
    }

    public ViewModelProductos(int idProducto, int idSubCategoria, String subCategoria, int idProveedor, String nombreProveedor, String nombreProducto, String descripcion, float precioUnitario, int idUnidadPrecio, String unidadPrecio) {
        this.idProducto = idProducto;
        this.idSubCategoria = idSubCategoria;
        this.subCategoria = subCategoria;
        this.idProveedor = idProveedor;
        this.nombreProveedor = nombreProveedor;
        this.nombreProducto = nombreProducto;
        this.descripcion = descripcion;
        this.precioUnitario = precioUnitario;
        this.idUnidadPrecio = idUnidadPrecio;
        this.unidadPrecio = unidadPrecio;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdSubCategoria() {
        return idSubCategoria;
    }

    public void setIdSubCategoria(int idSubCategoria) {
        this.idSubCategoria = idSubCategoria;
    }

    public String getSubCategoria() {
        return subCategoria;
    }

    public void setSubCategoria(String subCategoria) {
        this.subCategoria = subCategoria;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(float precioUnitario) {
        this.precioUnitario = precioUnitario;
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
