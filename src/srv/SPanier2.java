package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Article;
import model.DaoArticle;

/**
 * Servlet implementation class SPanier2
 */
@WebServlet("/SPanier2")
public class SPanier2 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private HashMap<Object, String> lstI = new HashMap<Object, String>();
	private int mntTot;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SPanier2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String plat = request.getParameter("plats");

		int qte = Integer.parseInt(request.getParameter("qte"));

		DaoArticle x = new DaoArticle();
		try {
			ArrayList<Article> lst = x.select();
			request.setAttribute("lst", lst);
			Article a = x.selectByNom(plat);

			int prix = a.getPrix() * qte;
			mntTot += prix;
			HashMap lstTmp = new HashMap();
			lstTmp = (HashMap) session.getAttribute("lstI");
			String value = (String) lstTmp.get(plat);

			if (value != null) {

				String[] tabV = value.split(",");

				int qteTab = Integer.parseInt(tabV[0]) + qte;
				int prixTab = Integer.parseInt(tabV[1]) + prix;

				lstTmp.replace(plat, qteTab + "," + prix);

				request.setAttribute("mntTot", mntTot);
				session.setAttribute("lstI", lstI);

			} else {

				lstI.put(plat, qte + "," + prix);

				request.setAttribute("mntTot", mntTot);
				session.setAttribute("lstI", lstI);
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.getRequestDispatcher("WEB-INF/Panier.jsp").forward(request, response);
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
