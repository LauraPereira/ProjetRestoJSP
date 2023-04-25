package model;

public class LigneComm {
	
	private Article article;
	private int quantite; 
	
	
	public LigneComm(Article article, int quantite) {
		this.article = article;
		this.quantite = quantite;
	}
	
	


	public double getPrixLigne() {
	
		return quantite*article.getPrix();
	}




	@Override
	public String toString() {
		return "Quantité : " + quantite + " - "+ article.toString() +" - "+ getPrixLigne() + " euro(s)";
	}

}
