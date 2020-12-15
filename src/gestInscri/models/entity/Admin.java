package gestInscri.models.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import gestInscri.enums.Roles;

/**
 * Admin model
 */
@Entity
@Table(name = "admin")
public class Admin implements Serializable{
	
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

	public Admin(String nom, String prenom, String mail, String password) {
		this.user = new User(nom, prenom, mail, password, Roles.Admin);
	}
	
	public Admin(){
		
	}
	
	public int getId() {
		return id;
	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
