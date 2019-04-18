package dev.sgp.ecouteur;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class CompteurSessionListener
 *
 */
@WebListener
public class CompteurSessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
	

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
	@Override
    public void sessionCreated(HttpSessionEvent se)  { 
    	Integer compteur = (Integer)
    			se.getSession().getServletContext().getAttribute("compteur");
    			se.getSession().getServletContext().setAttribute("compteur", compteur + 1);
    			System.out.println("Nombre de sessions ouvertes = " + (compteur + 1));
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    }
	
}
