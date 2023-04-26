package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoCommande {

	public ArrayList<Commande> select() throws ClassNotFoundException, SQLException {
		ArrayList<Commande> lst = new ArrayList<Commande>();
		String sql = "select * from commandes";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery(sql);

		while (res.next()) {
			Commande c = new Commande(res.getInt("IdCommande"), res.getString("IdClient"), res.getString("Date"),
					res.getInt("Total"), res.getString("Detail"));
			lst.add(c);
		}

		conn.close();
		return lst;
	}

	public ArrayList<Commande> selectByIdClient(String idClient) throws ClassNotFoundException, SQLException {
		ArrayList<Commande> lst = new ArrayList<Commande>();
		String sql = "select * from commandes where IdClient='" + idClient + "'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery(sql);

		while (res.next()) {
			Commande c = new Commande(res.getInt("IdCommande"), res.getString("IdClient"), res.getString("Date"),
					res.getInt("Total"), res.getString("Detail"));
			lst.add(c);
		}

		conn.close();
		return lst;
	}

	public void insert(Commande c) throws ClassNotFoundException, SQLException {
		String sql = "insert into clients values (?, ?, ?, ?, ?)";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, c.getIdCommande());
		ps.setString(2, c.getIdClient());
		ps.setString(3, c.getDate());
		ps.setInt(4, c.getTotal());
		ps.setString(5, c.getDetail());

		ps.executeUpdate();
		conn.close();
	}

}
