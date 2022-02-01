import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		PersonaggioFamoso oggetto1 = new PersonaggioFamoso();
		PersonaggioFamoso oggetto2 = new PersonaggioFamoso();
		PersonaggioFamoso oggetto3 = new PersonaggioFamoso();
		PersonaggioFamoso oggetto4 = new PersonaggioFamoso();
		
		ArrayList<PersonaggioFamoso> array = new ArrayList<PersonaggioFamoso>();
		
		oggetto1.setNome("Mark");
		oggetto2.setNome("Lucio");
		oggetto3.setNome("Adamo");
		oggetto4.setNome("Enzo");
		
		
		array.add(oggetto1);
		array.add(oggetto2);
		array.add(oggetto3);
		array.add(oggetto4);
		
		//proviamo una modifica
		
	for(PersonaggioFamoso i : array) {//ciclo foreach
		System.out.println(i.getNome());
	}
		
		
		
	}

}
