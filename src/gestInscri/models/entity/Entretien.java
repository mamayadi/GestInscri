package gestInscri.models.entity;

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

	public Candidat getCandidat() {
		return candidat;
	}

	public void setCandidat(Candidat candidat) {
		this.candidat = candidat;
	}

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Date getDateEntretien() {
		return dateEntretien;
	}

	public void setDateEntretien(Date dateEntretien) {
		this.dateEntretien = dateEntretien;
	}

}
