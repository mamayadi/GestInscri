package gestInscri.models.entity;

import java.util.ArrayList;

import gestInscri.enums.CandidatStatus;
import gestInscri.enums.Roles;

public class Candidat extends User {
	private String adresse;
	private ArrayList<String> documentsPedagogiques = new ArrayList<String>();
	private CandidatStatus status;
	private boolean inscrit = false;

	public Candidat(String nom, String prenom, String mail, String password, String adresse,
			ArrayList<String> documentsPedagogiques) {
		super(nom, prenom, mail, password, Roles.Candidat);
		this.adresse = adresse;
		this.documentsPedagogiques = documentsPedagogiques;
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

}
