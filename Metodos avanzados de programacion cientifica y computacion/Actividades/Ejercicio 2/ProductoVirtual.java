package Ejercicio2;

public class ProductoVirtual extends Producto{
    private String numero_licencia;
    
    public ProductoVirtual(String ID, String Nombre, boolean Stock, String numero_licencia){
        super(ID, Nombre, Stock);
        this.numero_licencia = numero_licencia;
    }
}
