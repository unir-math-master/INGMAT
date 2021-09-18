package examen;

import java.util.Random;

public class Socio extends Thread {
	private Random random = new Random();
	private int id;
	private Tablon tablon;
	
	private boolean escribirTablon() {
		try {
			if(tablon.escribirTablero(id)) {
				sleep(random.nextInt(1000) + 100);
				return true;
			}
			return false;
		}
		catch(InterruptedException ex) {
			return false;
		}
	}
	
	public Socio(int id, Tablon tablon) {
		this.id = id;
		this.tablon = tablon;
	}
	
	public void run() {
		while(true) {
			try {
				while(!escribirTablon()) {
					if(!tablon.escribiendo) {
						System.out.println("El socio "+this.id+" lee el tablero");
						Socio.sleep(random.nextInt(1000)+1000);
					}
				}
				
				System.out.println("El socio "+this.id+" esta escribiendo");
				tablon.escribiendo = true;
				try {
					sleep(random.nextInt(1000)+700);
				}
				catch(InterruptedException ex){
					System.out.println("Error." + ex.toString());
				}
				
				tablon.escribiendo = false;
				tablon.liberarTablero(id);
				
				try {
					sleep(random.nextInt(1000)+1200);
				}
				catch(InterruptedException ex) {
					System.out.println("Error."+ ex.toString());
				}
				
			}
			catch(InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}
}
