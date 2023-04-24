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

		String plat = request.getParameter("plats");

		int qte = Integer.parseInt(request.getParameter("qte"));

		DaoArticle x = new DaoArticle();
		try {
			ArrayList<Article> lst = x.select();
			request.setAttribute("lst", lst);
			Article a = x.selectByNom(plat);

			int prix = a.getPrix() * qte;
			lstI.put(plat, qte + "," + prix);
			request.setAttribute("lstI", lstI);
			System.out.println(mntTot);
			mntTot += prix;
			System.out.println(mntTot);
			request.setAttribute("mntTot", mntTot);
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
