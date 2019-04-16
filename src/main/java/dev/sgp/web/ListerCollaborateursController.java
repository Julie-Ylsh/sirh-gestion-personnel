package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;

public class ListerCollaborateursController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// code HTML ecrit dans le corps de la reponse
		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		Collaborateur randomCollaborateur = new Collaborateur("NOM", "Prénom", LocalDate.parse("04/12/1994",
				DateTimeFormatter.ofPattern("dd/MM/yyyy")), "7 allée des courlis",
				"045", "julie@hotmail.fr");
		req.setAttribute("collaborateur", randomCollaborateur);
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req,resp);
	}

}
