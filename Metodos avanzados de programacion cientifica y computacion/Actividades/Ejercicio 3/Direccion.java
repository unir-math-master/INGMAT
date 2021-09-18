package Ejercicio3;

public class Direccion {
    private String Pais;
    private String Municipio;
    private String Departamento;
    private String Direccion;
    private String Observaciones;
    private String Email;
    private boolean Facturacion;
    
    public Direccion(){
        
    }
    
    public Direccion(String Email, boolean Fact){
        this.Email = Email;
        this.Facturacion = Fact;
    }
    
    public Direccion(String Pais, String Mun, String Depto, String Dir, String Obs, boolean Fact){
        this.Pais = Pais;
        this.Municipio = Mun;
        this.Departamento = Depto;
        this.Direccion = Dir;
        this.Observaciones = Obs;
        this.Facturacion = Fact;
    }
}
