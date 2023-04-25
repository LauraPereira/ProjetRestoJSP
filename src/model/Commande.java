package model;

import java.util.Date;

public class Commande {
	
	private int idCommande;
	private String idClient;
	private String date;
	private int total;
	private String detail;
	
	
	public Commande() {
		
	}
	
	


	public Commande(int idCommande, String idClient, String date, int total, String detail) {
		this.idCommande = idCommande;
		this.idClient = idClient;
		this.date = date;
		this.total = total;
		this.detail = detail;
	}


	


	public int getIdCommande() {
		return idCommande;
	}


	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}


	public String getIdClient() {
		return idClient;
	}


	public void setIdClient(String idClient) {
		this.idClient = idClient;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public String getDetail() {
		return detail;
	}


	public void setDetail(String detail) {
		this.detail = detail;
	}




	@Override
	public String toString() {
		return "Commande [idCommande=" + idCommande + ", idClient=" + idClient + ", date=" + date + ", total=" + total
				+ ", detail=" + detail + "]";
	}
	
	
	
	
	

}
