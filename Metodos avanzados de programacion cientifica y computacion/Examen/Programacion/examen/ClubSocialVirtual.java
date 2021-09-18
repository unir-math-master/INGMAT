package examen;

public class ClubSocialVirtual {
	public static Tablon tablon;
	public static Socio[] socios=new Socio[10];
	
	public static void main(String args[]) {
		try {
			tablon = new Tablon("Tablon UNIR");
			for(int i=0; i<10; i++) {
				socios[i] = new Socio(i+1, tablon);
			}		
			
			socios[0].start();
			socios[1].start();
			socios[2].start();
			socios[3].start();
			socios[4].start();
			socios[5].start();
			socios[6].start();
			socios[7].start();
			socios[8].start();
			socios[9].start();
			
			socios[0].join();
			socios[1].join();
			socios[2].join();
			socios[3].join();
			socios[4].join();
			socios[5].join();
			socios[6].join();
			socios[7].join();
			socios[8].join();
			socios[9].join();
			
		}
		catch(InterruptedException e){
			
		}
	}
}
