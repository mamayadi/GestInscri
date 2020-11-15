package gestInscri;

public class Enseignant extends User {
	private Candidat[] listDossier;

	public Enseignant(String nom, String prenom, String mail, String password) {
		super(nom, prenom, mail, password);
		// TODO Auto-generated constructor stub
	}

	public Candidat[] getListDossier() {
		return listDossier;
	}

	public void setListDossier(Candidat[] listDossier) {
		this.listDossier = listDossier;
	}

}
