package srv;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SRecapCommande
 */
@WebServlet("/SRecapCommande")
public class SRecapCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<Object, String> recap = new HashMap<Object, String>();
	private int mntTot;
	private String idClient;
	private String nomClient;
	private String prenomClient;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SRecapCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		recap = (HashMap<Object, String>) session.getAttribute("lstI");
		
		idClient = (String) session.getAttribute("id");
		prenomClient = (String) session.getAttribute("prenom");
		nomClient = (String) session.getAttribute("nom");

		request.getRequestDispatcher("WEB-INF/recapCommande.jsp").forward(request, response);

//		response.getWriter().append("recap commande").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
