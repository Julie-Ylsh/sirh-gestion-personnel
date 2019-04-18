package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.service.FrequentationService;

/**
 * Servlet implementation class StatistiquesControlleur
 */
@WebServlet("/StatistiquesControlleur")
public class StatistiquesControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		request.setAttribute("listeVisites", FrequentationService.listerVisites());
		request.getRequestDispatcher("/WEB-INF/views/collab/Statistiques.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
}
