package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;

public class EditerCollaborateurControlleur extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// affiche le formulaire
		req.getRequestDispatcher("/WEB-INF/views/collab/NouveauCollaborateur.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		String dateNaissanceParamString = req.getParameter("dateNaissance");
		String adresseParam = req.getParameter("adresse");
		String secuParam = req.getParameter("numSecu");

		LocalDate dateNaissanceParam = LocalDate.parse(dateNaissanceParamString,
				DateTimeFormatter.ofPattern("yyyy-MM-d"));

		int matriculeParam = new Random().nextInt();
		String emailPro = prenomParam + "." + nomParam + "@societe.com";
		ZonedDateTime dateHeureCreation = ZonedDateTime.now();

		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		Collaborateur nouveauCollaborateur = new Collaborateur(nomParam, prenomParam, dateNaissanceParam, adresseParam,
				secuParam, emailPro);
		req.setAttribute("collaborateur", nouveauCollaborateur);

		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);

	}

}
