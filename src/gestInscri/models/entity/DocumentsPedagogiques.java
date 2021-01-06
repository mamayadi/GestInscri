package gestInscri.models.entity;

import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.Paths;
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
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

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
	private List<String> rapportStage = new ArrayList<String>();
	@ElementCollection
	private List<String> lettreRecommandation = new ArrayList<String>();
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

	public List<String> getRapportStage() {
		return rapportStage;
	}

	public void setRapportStage(List<String> rapportStage) {
		this.rapportStage = rapportStage;
	}

	public List<String> getLettreRecommandation() {
		return lettreRecommandation;
	}

	public void setLettreRecommandation(List<String> lettreRecommandation) {
		this.lettreRecommandation = lettreRecommandation;
	}

	public String getFileName(String path) {
		String[] pathStr = path.split("/");
		return pathStr[pathStr.length - 1];
	}

	public void zipFiles(Candidat c, List<String> files, HttpServletRequest request, String filename) {
		FileOutputStream fos = null;
		ZipOutputStream zipOut = null;
		FileInputStream fis = null;
		try {
			String pathFileString = System.getProperty("user.home") +
			"/workspace/GestInscri/WebContent/uploads/"
			+ c.getUser().getNom() + "-" + c.getUser().getPrenom() + "/" + filename;
			// File pathFile = new File(String.valueOf(pathFileString));
			// if (!pathFile.exists()) {
			fos = new FileOutputStream(pathFileString);
			zipOut = new ZipOutputStream(new BufferedOutputStream(fos));
			for (String filePath : files) {
				File input = new File(System.getProperty("user.home") + "/workspace/GestInscri/WebContent/" + filePath);
				fis = new FileInputStream(input);
				ZipEntry ze = new ZipEntry(input.getName());
				System.out.println("Zipping the file: " + input.getName());
				zipOut.putNextEntry(ze);
				byte[] tmp = new byte[4 * 1024];
				int size = 0;
				while ((size = fis.read(tmp)) != -1) {
					zipOut.write(tmp, 0, size);
				}
				zipOut.flush();
				fis.close();
			}
			zipOut.close();
			System.out.println("Done... Zipped the files...");
			// }
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fos != null)
					fos.close();
			} catch (Exception ex) {

			}
		}
	}

}
