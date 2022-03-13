package O_mallius;

public class Cantanti {
	
	
	private int id;
	 private String nome,cognome,immagine;
	 private int eta;
	 private int positivo;
	 private int negativo;
	 private String Data;
	 private int ultimo_voto=2;/*Nella jsp 'resoconto' ,all'interno della tabella,come si può vedere, appare solo il campo ultimo voto e non 'positivi'/'negativi.Quindi con questa variabile ausiliaria tengo conto se l'ultimo voto dato è stato positivo o negativo. E' inizializzato a 2 per includere la casistica del cantante che non è stato ancora votato */


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		
		

	}
	public String getData() {
		return Data;
	}

	public int getUltimo_voto() {
		return ultimo_voto;
	}
	public void setUltimo_voto(int ultimo_voto) {
		this.ultimo_voto = ultimo_voto;
	}
	public void setData(String data) {
		Data = data;
	}

	
	public int getPositivo() {
		return positivo;
	}

	public void setPositivo(int positivo) {
		this.positivo = positivo;
	}

	public int getNegativo() {
		return negativo;
	}

	public void setNegativo(int negativo) {
		this.negativo = negativo;
	}


	public String getNome() {
		return nome;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public int getEta() {
		return eta;
	}

	public void setEta(int eta) {
		this.eta = eta;
	}

	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	public String getImmagine() {
		return immagine;
	}
}