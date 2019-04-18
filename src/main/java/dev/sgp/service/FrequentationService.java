package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.VisiteWeb;

public class FrequentationService {
	static List<VisiteWeb> listeVisites = new ArrayList<>();

	public static List<VisiteWeb> listerVisites() {
		return listeVisites;
	}

	public static void sauvegarderVisite(VisiteWeb visite) {
		listeVisites.add(visite);
	}
}
