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

	private static HashMap<Object, String> lstI = new HashMap<Object, String>();
	private static HashMap<String, Integer> lstI2 = new HashMap<String, Integer>();

	private int mntTot;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SPanier2() {
		super();
	}
	
	

	public static HashMap<Object, String> getLstI() {
		return lstI;
	}



	public int getMntTot() {
		return mntTot;
	}



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 HttpSession session = request.getSession();
	        session.setAttribute("mntTot", mntTot);
	        session.setAttribute("lstI", lstI);

	        String plat = request.getParameter("plats");

	        int qte = Integer.parseInt(request.getParameter("qte"));

	        DaoArticle x = new DaoArticle();
	        try {
	            ArrayList<Article> lst = x.select();
	            request.setAttribute("lst", lst);
	            Article a = x.selectByNom(plat);

	            int prix = a.getPrix() * qte;

	            if (session.getAttribute("mntTot") != null) {
	                mntTot = prix + (int) session.getAttribute("mntTot");
	            } else {
	                mntTot += prix;
	            }

	            HashMap lstTmp = new HashMap();
	            lstTmp = (HashMap) session.getAttribute("lstI");
	            String value = (String) lstTmp.get(plat);

	            if (value != null) {

	                String[] tabV = value.split(",");

	                int qteTab = Integer.parseInt(tabV[0]) + qte;
	                int prixTab = Integer.parseInt(tabV[1]) + prix;

	                lstTmp.replace(plat, qteTab + "," + prix);

	                lstI2.put(plat, qte);

	                session.setAttribute("mntTot", mntTot);
	                session.setAttribute("lstI", lstTmp);
	                session.setAttribute("lstI2", lstI2);

	            } else {

	                lstI.put(plat, qte + "," + prix);
	                lstI2.put(plat, qte);

	                session.setAttribute("mntTot", mntTot);
	                session.setAttribute("lstI", lstI);
	                session.setAttribute("lstI2", lstI2);
	            }

	        } catch (ClassNotFoundException | SQLException e) {

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
		doGet(request, response);
	}

}
