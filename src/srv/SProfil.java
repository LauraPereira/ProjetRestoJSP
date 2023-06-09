package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

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
 * Servlet implementation class SProfil
 */
@WebServlet("/profil")
public class SProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SProfil() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// RECUP DES INFOS CLIENT

		// On r�cup�re l'id en session
		HttpSession x_session = request.getSession();
		String idSession = x_session.getAttribute("id").toString();

		// On r�cup�re l'adresse associ�e � l'id en bdd
		DaoClient x = new DaoClient();

		try {
			Client c = x.selectById(idSession);
			String adresse = c.getAdresse();
			request.setAttribute("adresse", adresse);

			// RECUP DES INFOS COMMANDES
			DaoCommande y = new DaoCommande();

			try {
				ArrayList<Commande> liste = y.selectByIdClient(idSession);
				request.setAttribute("commandes", liste);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// On dirige vers la page
		request.getRequestDispatcher("WEB-INF/profil.jsp").forward(request, response);
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
