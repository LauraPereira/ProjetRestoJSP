package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoArticle {

	public ArrayList<Article> select() throws ClassNotFoundException, SQLException {
		ArrayList<Article> lst = new ArrayList<Article>();
		String sql = "select * from articles";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery(sql);

		while (res.next()) {
			Article a = new Article(res.getInt("IdArticle"), res.getString("NomArticle"), res.getString("Description"),
					res.getInt("Prix"), res.getString("NomImage"), res.getString("Categorie"));
			lst.add(a);
		}

		conn.close();
		return lst;
	}

	public ArrayList<Article> selectByCat(String cat) throws ClassNotFoundException, SQLException {
		ArrayList<Article> lst = new ArrayList<Article>();
		String sql = "select * from articles where Categorie='" + cat + "'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery(sql);

		while (res.next()) {
			Article a = new Article(res.getInt("IdArticle"), res.getString("NomArticle"), res.getString("Description"),
					res.getInt("Prix"), res.getString("NomImage"), res.getString("Categorie"));
			lst.add(a);
		}

		conn.close();
		return lst;
	}

	public Article selectByNom(String nom) throws ClassNotFoundException, SQLException {
		Article a = null;
		String sql = "select * from articles where NomArticle='" + nom + "'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery(sql);

		if (res.next()) {
			a = new Article(res.getInt("IdArticle"), res.getString("NomArticle"), res.getString("Description"),
					res.getInt("Prix"), res.getString("NomImage"), res.getString("Categorie"));
		}
		conn.close();
		return a;
	}

	public int selectPrix(String nom) throws ClassNotFoundException, SQLException {
		int prix = 0;
		String sql = "select prix from articles where NomArticle='" + nom + "'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root");

		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery(sql);

		if (res.next()) {
			prix = res.getInt("Prix");
		}
		conn.close();
		return prix;
	}

}
