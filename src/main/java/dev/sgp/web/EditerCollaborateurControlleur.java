package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurControlleur extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est matricule
		String matriculeParam = req.getParameter("matricule");

		if (matriculeParam == null) {
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.setContentType("text/html");
			// code HTML ecrit dans le corps de la reponse
			resp.getWriter().write("<h1> Edition de collaborateur </h1>" + "Matricule : " + matriculeParam);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String protocol = req.getProtocol();
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");

		if (matriculeParam == null) {
			resp.sendError(400, "Un matricule est attendu");
		} else if (titreParam == null) {
			resp.sendError(400, "Un titre est attendu");
		} else if (nomParam == null) {
			resp.sendError(400, "Un nom est attendu");
		} else if (prenomParam == null) {
			resp.sendError(400, "Un prénom est attendu");
		} else {
			resp.setContentType("text/html");
			// code HTML ecrit dans le corps de la reponse
			resp.getWriter().write("<h1> Edition de collaborateur </h1>" + "Matricule : " + matriculeParam
					+ ", titre : " + titreParam + ", nom : " + nomParam + ", prenom : " + prenomParam);
		}
	}

}
