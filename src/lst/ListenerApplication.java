package lst;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ListenerApplication
 *
 */
@WebListener
public class ListenerApplication implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ListenerApplication() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 

    	int compteur = 0;
        ServletContext app = arg0.getServletContext();
        app.setAttribute("compteur", compteur);
        
        System.out.println(compteur);
    }
	
}
