package gestInscri.models.entity;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import gestInscri.enums.CandidatStatus;
import gestInscri.enums.Roles;

/**
 * Candidat model
 */
@Entity
@Table(name = "candidat")
public class Candidat  {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@OneToOne(fetch = FetchType.LAZY)
	private User user;
	@Column(name = "adresse")
	private String adresse;
	@Column(name = "documentsPedagogiques")
	private ArrayList<String> documentsPedagogiques = new ArrayList<String>();
	@Column(name = "status")
	private CandidatStatus status;
	@Column(name = "inscrit")
	private boolean inscrit = false;

	public Candidat(String nom, String prenom, String mail, String password, String adresse,
			ArrayList<String> documentsPedagogiques) {
		this.user = new User(nom, prenom, mail, password, Roles.Candidat);
		this.adresse = adresse;
		this.documentsPedagogiques = documentsPedagogiques;
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

	public ArrayList<String> getDocumentsPedagogiques() {
		return documentsPedagogiques;
	}

	public void setDocumentsPedagogiques(ArrayList<String> documentsPedagogiques) {
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

	public void setUser(User user) {
		this.user = user;
	}
}
