package gestInscri.models.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class Enseignant implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "telephone")
	private int telephone;
	@Column(name = "departement")
	private String departement;
	@OneToMany(cascade = CascadeType.ALL)
	private List<Candidat> listDossier;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private User user;

	public Enseignant(String nom, String prenom, String mail, String password, int telephone, String departement) {
		this.user = new User(nom, prenom, mail, password, Roles.Enseignant);
		this.telephone = telephone;
		this.departement = departement;
	}

	public Enseignant() {
	}

	public int getId() {
		return id;
	}

	public int getTelephone() {
		return telephone;
	}

	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}

	public String getDepartement() {
		return departement;
	}

	public void setDepartement(String departement) {
		this.departement = departement;
	}

	public List<Candidat> getListDossier() {
		return listDossier;
	}

	public void setListDossier(List<Candidat> listDossier) {
		this.listDossier = listDossier;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
