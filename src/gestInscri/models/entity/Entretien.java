package gestInscri.models.entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Entretien model
 */
@Entity
@Table(name = "entretien")
public class Entretien implements Serializable {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name="candidat_id")
	private Candidat candidat;
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Enseignant enseignant;
	@Column(name = "dateEntretien")
	private Date dateEntretien;

	public Entretien() {
	}

	public Entretien(Candidat candidat, Enseignant enseignant, Date dateEntretien) {
		this.candidat = candidat;
		this.enseignant = enseignant;
		this.dateEntretien = dateEntretien;
	}

	public int getId() {
		return id;
	}

	public Candidat getCandidat() {
		return candidat;
	}

	public void setCandidat(Candidat candidat) {
		this.candidat = candidat;
	}

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Date getDateEntretien() {
		return dateEntretien;
	}

	public void setDateEntretien(Date dateEntretien) {
		this.dateEntretien = dateEntretien;
	}

	public String getEntretienDate() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		return dateFormat.format(this.dateEntretien);
	}

	public String getEntretienTime() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
		return dateFormat.format(this.dateEntretien);
	}

}
