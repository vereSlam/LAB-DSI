/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

public class ViewModelSubCategorias {
    private int idSubCategoria; 
    private int idCategoria; 
    private String categoria;
    private String subCategoria;

    public ViewModelSubCategorias() {
    }

    public ViewModelSubCategorias(int idSubCategoria, int idCategoria, String categoria, String subCategoria) {
        this.idSubCategoria = idSubCategoria;
        this.idCategoria = idCategoria;
        this.categoria = categoria;
        this.subCategoria = subCategoria;
    }

    public int getIdSubCategoria() {
        return idSubCategoria;
    }

    public void setIdSubCategoria(int idSubCategoria) {
        this.idSubCategoria = idSubCategoria;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getSubCategoria() {
        return subCategoria;
    }

    public void setSubCategoria(String subCategoria) {
        this.subCategoria = subCategoria;
    }
    
}
