package Ejercicio2;

public class Pedido {
    private final Direccion Dir_Entrega;
    private ProductoFisico ProductoFisico;
    private ProductoVirtual ProductoVirtual;
    private String estado_pedido;
    
    public Pedido(String estado_pedido){
        this.Dir_Entrega = new Direccion();
        this.estado_pedido = estado_pedido;
    }
}
