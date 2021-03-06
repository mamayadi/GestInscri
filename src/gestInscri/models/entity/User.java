package gestInscri.models.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import gestInscri.enums.Roles;

/**
 * User model
 */
@Entity
@Table(name = "user")
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "nom")
	private String nom;
	@Column(name = "prenom")
	private String prenom;
	@Column(name = "mail")
	private String mail;
	@Column(name = "password")
	private String password;
	@Column(name = "role")
	private Roles role;

	public User(String nom, String prenom, String mail, String password, Roles role) {
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.password = password;
		this.role = role;
	}

	public User() {
	}

	public int getId() {
		return id;
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

	public String getProfilImageText() {
		return nom.substring(0, 1).toUpperCase() + prenom.substring(0, 1).toUpperCase();
	}

}
