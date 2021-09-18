package Ejercicio3;

public class Pedido {
    private final Direccion Dir_Entrega;
    private final Inventario Inventario;
    private String estado_pedido;
    
    public Pedido(String estado_pedido){
        this.Dir_Entrega = new Direccion();
        this.Inventario = new Inventario();
        this.estado_pedido = estado_pedido;
    }
}
