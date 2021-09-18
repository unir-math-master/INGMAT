package Ejercicio2;

public class ProductoFisico extends Producto {
    private float peso;
    private float alto;
    private float ancho;
    private float largo;
    private float coste_transporte;
    
    public ProductoFisico(String ID, String Nombre, boolean Stock, float peso, float alto, float ancho, float largo, float costo){
        super(ID, Nombre, Stock);
        this.peso = peso;
        this.alto = alto;
        this.ancho = ancho;
        this.largo = largo;
        this.coste_transporte = costo;
    } 
}
