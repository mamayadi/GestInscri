package gestInscri.models.entity;

import gestInscri.enums.Roles;

public class Admin extends User {

	public Admin(String nom, String prenom, String mail, String password) {
		super(nom, prenom, mail, password, Roles.Admin);
	}

}
