package dev.sgp.filtre;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dev.sgp.entite.VisiteWeb;
import dev.sgp.service.FrequentationService;

//Creer un filtre dev.sgp.filtre.FrequentationFilter qui permet de sauvegarder des visites.

public class FrequentationFilter implements Filter {

	private FilterConfig config = null;

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config = config;
		config.getServletContext().log("FrequentationFilter initialized");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		long startTime = System.currentTimeMillis();
		chain.doFilter(req, resp);
		String chemin = ((HttpServletRequest) req).getRequestURI();
		long endTime = System.currentTimeMillis();
		long tempsExecution = endTime - startTime;
		VisiteWeb visite = new VisiteWeb((int) (Math.random()), chemin, (int) tempsExecution);
		FrequentationService.sauvegarderVisite(visite);
	}



	@Override
	public void destroy() {

	}

}
