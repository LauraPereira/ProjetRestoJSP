package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;
import model.DaoArticle;

/**
 * Servlet implementation class SPanier
 */
@WebServlet("/SPanier")
public class SPanier extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SPanier() {
		super();
<<<<<<< HEAD
<<<<<<< HEAD
		// TODO Auto-generated constructor stub
=======
>>>>>>> 42921a74435ebcb0bd873c7d8991361bd5f2a70b
=======
>>>>>>> dev
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
<<<<<<< HEAD
<<<<<<< HEAD
		// TODO Auto-generated method stub
=======
>>>>>>> 42921a74435ebcb0bd873c7d8991361bd5f2a70b
=======

>>>>>>> dev
		DaoArticle x = new DaoArticle();

		try {
			ArrayList<Article> lst = x.select();
			request.setAttribute("lst", lst);

		} catch (ClassNotFoundException | SQLException e) {
<<<<<<< HEAD
<<<<<<< HEAD
			// TODO Auto-generated catch block
=======
>>>>>>> 42921a74435ebcb0bd873c7d8991361bd5f2a70b
=======

>>>>>>> dev
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
<<<<<<< HEAD
<<<<<<< HEAD
		// TODO Auto-generated method stub
=======
>>>>>>> 42921a74435ebcb0bd873c7d8991361bd5f2a70b
=======

>>>>>>> dev
		doGet(request, response);
	}

}
