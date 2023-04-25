package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Article;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		

            
    		HashMap cmd = (HashMap) session.getAttribute("lstI2");
	
       		Collection plats = cmd.keySet();
       		Collection details =  cmd.values();
       		
    		System.out.println(plats);
    		System.out.println(details);	
    		
    	DaoArticle y = new DaoArticle();
    	
//    	int length = cmd.size()*2;
//    	String[] strDetails = new String[length];
    	
    	Integer idPlat;
    	
    	String strDetails="";
    	
    	for (Iterator<String> iterator = plats.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
//            Article a = new Article();
//            String nom = iterator.next();
//        	try {
//				a = y.selectByNom(nom);
//			} catch (ClassNotFoundException | SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//        	
//        	idPlat = a.getIdArticle();
//        	String strIdPlat = idPlat.toString();
//        	
//        	strDetails += strIdPlat;
//        	
//        	System.out.println(strDetails);

            }
    	
    	for (Iterator<Integer> iterator = details.iterator(); iterator.hasNext();) {
    		int qte = iterator.next();
            System.out.println(qte);
            }
    		
    	
    	
    		
		ServletContext app = (ServletContext) request.getServletContext();
		int compteur = (int) app.getAttribute("compteur");
		
		compteur += 1;
				
		int idCommande = 30;
		String idClient = (String) session.getAttribute("id");
		String date = new Date().toString();
		int total = (int) session.getAttribute("mntTot");
		String detail = "détail commande";

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
