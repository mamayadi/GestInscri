package gestInscri.models.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Documents Pedagogiques model
 */
@Entity
@Table(name = "documentsPedagogiques")
public class DocumentsPedagogiques implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "diplome", nullable = true)
	private String diplome;
	@Column(name = "attestationreussite", nullable = true)
	private String attestationreussite;
	@Column(name = "noteBac", nullable = true)
	private String noteBac;
	@Column(name = "premiereAnnee", nullable = true)
	private String premiereAnnee;
	@Column(name = "deuxiemeAnnee", nullable = true)
	private String deuxiemeAnnee;
	@Column(name = "troisiemeAnnee", nullable = true)
	private String troisiemeAnnee;
	@ElementCollection
	private List<String> rapportStage = new ArrayList();
	@ElementCollection
	private List<String> lettreRecommandation = new ArrayList();
	@OneToOne(mappedBy = "documentsPedagogiques")    
    private Candidat candidat;

	public DocumentsPedagogiques() {
	}

	public DocumentsPedagogiques(String diplome, String attestationreussite, String noteBac, String premiereAnnee,
			String deuxiemeAnnee, String troisiemeAnnee, List<String> rapportStage, List<String> lettreRecommandation) {
		this.diplome = diplome;
		this.attestationreussite = attestationreussite;
		this.noteBac = noteBac;
		this.premiereAnnee = premiereAnnee;
		this.deuxiemeAnnee = deuxiemeAnnee;
		this.troisiemeAnnee = troisiemeAnnee;
		this.rapportStage = rapportStage;
		this.lettreRecommandation = lettreRecommandation;
	}

	public int getId() {
		return id;
	}

	public String getDiplome() {
		return diplome;
	}

	public void setDiplome(String diplome) {
		this.diplome = diplome;
	}

	public String getAttestationreussite() {
		return attestationreussite;
	}

	public void setAttestationreussite(String attestationreussite) {
		this.attestationreussite = attestationreussite;
	}

	public String getNoteBac() {
		return noteBac;
	}

	public void setNoteBac(String noteBac) {
		this.noteBac = noteBac;
	}

	public String getPremiereAnnee() {
		return premiereAnnee;
	}

	public void setPremiereAnnee(String premiereAnnee) {
		this.premiereAnnee = premiereAnnee;
	}

	public String getDeuxiemeAnnee() {
		return deuxiemeAnnee;
	}

	public void setDeuxiemeAnnee(String deuxiemeAnnee) {
		this.deuxiemeAnnee = deuxiemeAnnee;
	}

	public String getTroisiemeAnnee() {
		return troisiemeAnnee;
	}

	public void setTroisiemeAnnee(String troisiemeAnnee) {
		this.troisiemeAnnee = troisiemeAnnee;
	}

	public List<String> getRapportSatge() {
		return rapportStage;
	}

	public void setRapportSatge(List<String> rapportSatge) {
		this.rapportStage = rapportSatge;
	}

	public List<String> getLettreRecommandation() {
		return lettreRecommandation;
	}

	public void setLettreRecommandation(List<String> lettreRecommandation) {
		this.lettreRecommandation = lettreRecommandation;
	}

}
