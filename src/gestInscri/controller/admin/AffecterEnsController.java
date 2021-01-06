package gestInscri.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.Enseignant;
import gestInscri.models.dao.EnseignantDao;
import gestInscri.enums.CandidatStatus;
import gestInscri.models.dao.CandidatDao;

/**
 * Servlet implementation class AffecterEnsController
 */
@WebServlet("/AffecterEnsController")
public class AffecterEnsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EnseignantDao enseignantDao = new EnseignantDao();
	CandidatDao candidatDao = new CandidatDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AffecterEnsController() {
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
		Candidat candidat = (Candidat) request.getSession().getAttribute("foundedCandidat");
		String enseignantId = request.getParameter("selectedEnseignant");
		Enseignant enseignant = enseignantDao.getEnseignantById(Integer.valueOf(enseignantId));
		System.out.println("part 1");
		if (candidat != null && enseignant != null) {
			List<Candidat> dossierList = new ArrayList<Candidat>();
			if (enseignant.getListDossier() != null) {
				dossierList = enseignant.getListDossier();
			}
			dossierList.add(candidat);
			// enseignant.setListDossier(dossierList);
			candidat.setEnseignant(enseignant);
			candidat.setStatus(CandidatStatus.EN_COURS);
			Candidat updatedCandidat = candidatDao.updateCandidat(candidat);

			if (updatedCandidat != null){
				getServletContext().getRequestDispatcher("/admin/folderDetails.jsp?id=" + enseignantId).forward(request,
						response);
			}
				
		}
	}

}
