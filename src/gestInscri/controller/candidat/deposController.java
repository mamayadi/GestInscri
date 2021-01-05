package gestInscri.controller.candidat;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import gestInscri.enums.CandidatStatus;
import gestInscri.models.dao.CandidatDao;
import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.DocumentsPedagogiques;
import gestInscri.utils.FileManager;

import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

/**
 * Servlet implementation class deposController
 */

@MultipartConfig
@WebServlet("/deposController")
public class deposController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FileManager fileManger = new FileManager();
	CandidatDao candidatDao = new CandidatDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public deposController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Candidat candidat = (Candidat) request.getSession().getAttribute("connectedCandidat");
		DocumentsPedagogiques docs;
		if (candidat.getDocumentsPedagogiques() == null) {
			docs = new DocumentsPedagogiques();
		} else {
			docs = candidat.getDocumentsPedagogiques();
		}
		// Adresse field
		String adresse = request.getParameter("adresse");
		if (adresse != null)
			candidat.setAdresse(adresse);

		// Diplome file
		Part diplomePart = request.getPart("diplome");
		if (diplomePart != null) {
			String uploadedDiplome = fileManger.saveFile(diplomePart, candidat.getUser());
			docs.setDiplome(uploadedDiplome);
		}

		// Attestation reussite file
		Part attestationreussitePart = request.getPart("attestationreussite");
		if (attestationreussitePart != null) {
			String uploadedattestationreussite = fileManger.saveFile(attestationreussitePart, candidat.getUser());
			docs.setAttestationreussite(uploadedattestationreussite);
		}

		// Note Bac file
		Part noteBacPart = request.getPart("noteBac");
		if (noteBacPart != null) {
			String uploadednoteBac = fileManger.saveFile(noteBacPart, candidat.getUser());
			docs.setNoteBac(uploadednoteBac);
		}

		// Premiere Annee file
		Part premiereAnneePart = request.getPart("premiereAnnee");
		if (premiereAnneePart != null) {
			String uploadedpremiereAnnee = fileManger.saveFile(premiereAnneePart, candidat.getUser());
			docs.setPremiereAnnee(uploadedpremiereAnnee);
		}

		// Deuxieme Annee file
		Part deuxiemeAnneePart = request.getPart("deuxiemeAnnee");
		if (deuxiemeAnneePart != null) {
			String uploadeddeuxiemeAnnee = fileManger.saveFile(deuxiemeAnneePart, candidat.getUser());
			docs.setDeuxiemeAnnee(uploadeddeuxiemeAnnee);
		}

		// Troisieme Annee file
		Part troisiemeAnneePart = request.getPart("troisiemeAnnee");
		if (troisiemeAnneePart != null) {
			String uploadedtroisiemeAnnee = fileManger.saveFile(troisiemeAnneePart, candidat.getUser());
			docs.setTroisiemeAnnee(uploadedtroisiemeAnnee);
		}

		// Rapport Stage files
		List<Part> rapportStageParts = request.getParts().stream().filter(part -> "rapportStage".equals(part.getName()) && part.getSize() > 0).collect(Collectors.toList());
		if (rapportStageParts != null) {
			List<String> uploadedRapportStage = new ArrayList<String>();
			for (Part rapportStagePart : rapportStageParts) {
				uploadedRapportStage.add(fileManger.saveFile(rapportStagePart, candidat.getUser())) ;
			}			
			docs.setRapportStage(uploadedRapportStage);
		}

		// Lettre Recommandation files
		List<Part> lettreRecommandationParts = request.getParts().stream().filter(part -> "lettreRecommandation".equals(part.getName()) && part.getSize() > 0).collect(Collectors.toList());
		if (lettreRecommandationParts != null) {
			List<String> uploadedLettreRecommandation = new ArrayList<String>();
			for (Part lettreRecommandationPart : lettreRecommandationParts) {
				uploadedLettreRecommandation.add(fileManger.saveFile(lettreRecommandationPart, candidat.getUser())) ;
			}
			docs.setLettreRecommandation(uploadedLettreRecommandation);
		}

		candidat.setDocumentsPedagogiques(docs);
		candidat.setInscrit(false);
		Candidat updatedCandidat = candidatDao.updateCandidat(candidat);
		if (updatedCandidat != null) {
			updatedCandidat.getDocumentsPedagogiques().zipFiles(updatedCandidat,updatedCandidat.getDocumentsPedagogiques().getRapportStage(), request, "Rapport de Stage(s).zip");
			updatedCandidat.getDocumentsPedagogiques().zipFiles(updatedCandidat,updatedCandidat.getDocumentsPedagogiques().getLettreRecommandation(), request, "Lettre de Recommandation(s).zip");
			response.sendRedirect(request.getContextPath() + "/candidat/details.jsp");
		}
	}

}
