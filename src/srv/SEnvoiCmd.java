package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Commande;
import model.DaoArticle;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		HashMap cmd = (HashMap) session.getAttribute("lstI2");

		Collection plats = cmd.keySet();
		Collection details = cmd.values();

		DaoArticle y = new DaoArticle();

		int length = cmd.size() * 2;
		int[] Details = new int[length];
		int i = 1;

		for (Iterator<String> iterator = plats.iterator(); iterator.hasNext();) {
			try {
				Details[i] = y.selectByNom(iterator.next()).getIdArticle();
				i = i + 2;
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		int j = 0;
		for (Iterator<Integer> iterator = details.iterator(); iterator.hasNext();) {
			Details[j] = iterator.next();
			j = j + 2;
		}
		
		DateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		Date dt = new Date();


		int idCommande = 0;
		String idClient = (String) session.getAttribute("id");
		String date = format.format(dt).toString();
		int total = (int) session.getAttribute("mntTot");
		System.out.println(Arrays.toString(Details));
		String detail = Arrays.toString(Details);

		Commande c = new Commande(idCommande, idClient, date, total, detail);
		DaoCommande x = new DaoCommande();

		try {
			x.insert(c);
			session.setAttribute("commande", c);
			System.out.println(c);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("WEB-INF/commande-succes.jsp").forward(request, response);
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
