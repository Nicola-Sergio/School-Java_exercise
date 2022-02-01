
public class PersonaggioFamoso {
	
	
	String nome;
	String cognome;
	String azienda;
	int eta;
	
	
	
	public PersonaggioFamoso() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PersonaggioFamoso(String nome, String cognome, String azienda, int eta) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.azienda = azienda;
		this.eta = eta;
	}
	
	
	
	
	public String getNome() {
		return nome;
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
	public String getAzienda() {
		return azienda;
	}
	public void setAzienda(String azienda) {
		this.azienda = azienda;
	}
	public int getEta() {
		return eta;
	}
	public void setEta(int eta) {
		this.eta = eta;
	}
}
