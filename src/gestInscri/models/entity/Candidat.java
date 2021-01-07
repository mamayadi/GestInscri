package gestInscri.models.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import gestInscri.enums.CandidatStatus;
import gestInscri.enums.Roles;

/**
 * Candidat model
 */
@Entity
@Table(name = "candidat")
public class Candidat implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@OneToOne(cascade = CascadeType.ALL)
	private User user;
	@Column(name = "adresse", nullable = true)
	private String adresse;
	@OneToOne(cascade = CascadeType.ALL, optional = true)
	private DocumentsPedagogiques documentsPedagogiques;
	@Column(name = "status", nullable = true)
	private CandidatStatus status;
	@Column(name = "inscrit", nullable = true)
	private boolean inscrit = false;
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = true)
	@JoinTable(name = "enseignant_candidat")
	private Enseignant enseignant;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = true, mappedBy = "candidat")
	private Entretien entretien;

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Candidat(String nom, String prenom, String mail, String password) {
		this.user = new User(nom, prenom, mail, password, Roles.Candidat);
		this.status = CandidatStatus.EN_ATTENTE;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Candidat() {
	}

	public int getId() {
		return id;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public DocumentsPedagogiques getDocumentsPedagogiques() {
		return documentsPedagogiques;
	}

	public void setDocumentsPedagogiques(DocumentsPedagogiques documentsPedagogiques) {
		this.documentsPedagogiques = documentsPedagogiques;
	}

	public CandidatStatus getStatus() {
		return status;
	}

	public void setStatus(CandidatStatus status) {
		this.status = status;
	}

	public boolean isInscrit() {
		return inscrit;
	}

	public void setInscrit(boolean inscrit) {
		this.inscrit = inscrit;
	}

	public User getUser() {
		return user;
	}

	public Entretien getEntretien() {
		return entretien;
	}

	public void setEntretien(Entretien entretien) {
		this.entretien = entretien;
	}
}
