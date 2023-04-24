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
import model.DaoClient;

/**
 * Servlet implementation class SConnexion
 */
@WebServlet("/connect")
public class SConnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SConnexion() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// On récupère les infos du formulaire
		String id = request.getParameter("id");
		String password = request.getParameter("psw");

		// Si id vide on renvoie vers la page d'erreur
		if (id == null || id.equals("") || password == null || password.equals("")) {
			request.getRequestDispatcher("WEB-INF/connexion-echec.jsp").forward(request, response);
		}

		// On récupère le psw associé à l'id en bdd
		DaoClient x = new DaoClient();

		try {
			Client c = x.selectById(id);

			String idBdd = c.getId();
			String pswBdd = c.getPassword();

			// Si id et psw correspondent à id et psw bdd on renvoie vers la page de succès
			// On passe les infos dans la session
			if (id.equals(idBdd) && password.equals(pswBdd)) {
				
				// On stocke les infos du client
				request.setAttribute("client", c);
				
				// On place des infos dans session
				// (choix de ne pas placer l'obejt c en entier car il contient le mdp : sécurité)
				HttpSession x_session = request.getSession();
				x_session.setAttribute("id", id);
				x_session.setAttribute("prenom", c.getPrenom());
				x_session.setAttribute("nom", c.getNom());
	
				
				request.getRequestDispatcher("WEB-INF/connexion-succes.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("WEB-INF/connexion-echec.jsp").forward(request, response);
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
