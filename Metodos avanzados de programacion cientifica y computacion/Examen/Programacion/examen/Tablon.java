package examen;

public class Tablon {
	private String nombre;
	public int libre = 0;
	private static int limite_escritura=2;
	public boolean escribiendo = false;
	
	public Tablon(String nombre) {
		this.nombre = nombre;
	}
	
	public synchronized boolean escribirTablero(int id_socio) throws InterruptedException{
		if(libre==limite_escritura)
			return false;
		
		System.out.println("== El socio "+id_socio+" va a escribir en el tablon ==");
		libre +=1;
		System.out.println("== Socios escribiendo actualmente ["+this.libre+"] ==");
		
		return true;
	}
	
	public synchronized void liberarTablero(int id_socio) throws InterruptedException{
		libre -=1;
		System.out.println("==== El socio "+ id_socio +" libera el tablon ====");
		System.out.println("== Socios escribiendo actualmente ["+ this.libre +"] ==");
		this.notify();
	}
}