package Ejercicio2;

public abstract class Producto {
    private String ID;
    private String Nombre;
    private boolean Stock;
    
    public Producto(String ID, String Nombre, boolean Stock){
        this.ID = ID;
        this.Nombre = Nombre;
        this.Stock = Stock;
    }
    
    public String get_id(){
        return ID;
    }
    
    public String get_nombre(){
        return Nombre;
    }
    
    public boolean get_stock(){
        return Stock;
    }
}
