package gestInscri;

import java.util.Date;

public class Entretien {
	private Candidat candidat;
	private Enseignant enseignant;
	private Date dateEntretien;

	public Entretien(Candidat candidat, Enseignant enseignant, Date dateEntretien) {
		this.candidat = candidat;
		this.enseignant = enseignant;
		this.dateEntretien = dateEntretien;
	}

}
