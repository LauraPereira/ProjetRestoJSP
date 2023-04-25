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

import model.Article;
import model.DaoArticle;

/**
 * Servlet implementation class Article
 */
@WebServlet("/SArticle")
public class SArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SArticle() {
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
		DaoArticle x = new DaoArticle();
		HttpSession session = request.getSession();

		try {
			ArrayList<Article> lstE = x.selectByCat("Entrees");
			request.setAttribute("lstE", lstE);

			ArrayList<Article> lstP = x.selectByCat("Plats");
			request.setAttribute("lstP", lstP);

			ArrayList<Article> lstD = x.selectByCat("Desserts");
			request.setAttribute("lstD", lstD);

			ArrayList<Article> lstB = x.selectByCat("Boissons");
			request.setAttribute("lstB", lstB);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("Article.jsp").forward(request, response);
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
