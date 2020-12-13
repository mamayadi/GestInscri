package gestInscri.models.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Entretien model
 */
@Entity
@Table(name = "entretien")
public class Entretien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@OneToOne(fetch = FetchType.LAZY)
	private Candidat candidat;
	@OneToOne(fetch = FetchType.LAZY)
	private Enseignant enseignant;
	@Column(name = "dateEntretien")
	private Date dateEntretien;

	public Entretien(Candidat candidat, Enseignant enseignant, Date dateEntretien) {
		this.candidat = candidat;
		this.enseignant = enseignant;
		this.dateEntretien = dateEntretien;
	}
	
	public int getId() {
		return id;
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
