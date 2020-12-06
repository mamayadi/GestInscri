package gestInscri.models.entity;

import gestInscri.enums.Roles;

public class Enseignant extends User {
	private Candidat[] listDossier;

	public Enseignant(String nom, String prenom, String mail, String password) {
		super(nom, prenom, mail, password, Roles.Enseignant);
	}

	public Candidat[] getListDossier() {
		return listDossier;
	}

	public void setListDossier(Candidat[] listDossier) {
		this.listDossier = listDossier;
	}

}
