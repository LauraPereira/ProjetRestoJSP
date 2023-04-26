package srv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Client;
import model.Commande;
import model.DaoClient;
import model.DaoCommande;

/**
 * Servlet implementation class SEnvoiCmd
 */
@WebServlet("/SEnvoiCmd")
public class SEnvoiCmd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SEnvoiCmd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
//		String id = request.getParameter("id");
//		String password = request.getParameter("psw");
//		String nom = request.getParameter("nom");
//		String prenom = request.getParameter("prenom");
//		String adresse = request.getParameter("adresse");
//
//		Commande c = new Commande(id, password, nom, prenom, adresse);
//
//		DaoCommande x = new DaoCommande();
//
//		try {
//			x.insert(c);
//			request.setAttribute("commande", c);
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		
		
		request.getRequestDispatcher("WEB-INF/commande-succes.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
