package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DaoClient {


	public void insert (Client p) throws ClassNotFoundException, SQLException {
		String sql = "insert into clients values (?, ?, ?, ?, ?)";
		
		Class.forName("com.mysql.jdbc.Driver") ; 
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root" ); 
		
		PreparedStatement ps= conn.prepareStatement(sql); 
		ps.setString (1, p.getId()) ;
		ps.setString (2, p.getPassword()) ;
		ps.setString (3, p.getNom()) ;
		ps.setString (4, p.getPrenom()) ;
		ps.setString (5, p.getAdresse()) ;
		
		ps.executeUpdate(); 
		conn.close();
	}

	
	public Client selectById (int id) throws ClassNotFoundException, SQLException {
		Client p = null ;
		String sql = "select * from clients where id = " + id ;
		
		Class.forName("com.mysql.jdbc.Driver") ; 
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_resto_jsp", "root", "root" ); 
		
		Statement st=conn.createStatement(); 
		
		ResultSet rs = st.executeQuery(sql); 
		
		if (rs.next()) 
		{
			p =  new Client (rs.getString("id"), rs.getString("nom"),  rs.getString("prenom"),rs.getString("password"), rs.getString("adresse") );
		}
		
		conn.close();
		
		return p ;
	}


}
