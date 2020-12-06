package gestInscri.models.entity;

import gestInscri.enums.Roles;

public abstract class User {
	String nom;
	String prenom;
	String mail;
	String password;
	Roles role;

	public User(String nom, String prenom, String mail, String password, Roles role) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.password = password;
		this.role = role;
	}

	public Roles getRole() {
		return role;
	}

	public void setRole(Roles role) {
		this.role = role;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return nom + ' ' + prenom.toUpperCase();
	}

}
