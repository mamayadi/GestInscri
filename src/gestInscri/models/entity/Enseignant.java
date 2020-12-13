package gestInscri.models.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderColumn;
import javax.persistence.Table;

import gestInscri.enums.Roles;

/**
 * Enseignant model
 */
@Entity
@Table(name = "enseignant")
public class Enseignant {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@OneToMany(cascade = CascadeType.ALL)
	@OrderColumn(name="type")
	private Candidat[] listDossier;
	@OneToOne(fetch = FetchType.LAZY)
	private User user;

	public Enseignant(String nom, String prenom, String mail, String password) {
		this.user = new User(nom, prenom, mail, password, Roles.Enseignant);
	}
	
	public int getId() {
		return id;
	}

	public Candidat[] getListDossier() {
		return listDossier;
	}

	public void setListDossier(Candidat[] listDossier) {
		this.listDossier = listDossier;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
