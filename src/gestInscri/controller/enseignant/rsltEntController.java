package gestInscri.controller.enseignant;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.enums.CandidatStatus;
import gestInscri.models.dao.CandidatDao;
import gestInscri.models.dao.EntretienDao;
import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.Entretien;

/**
 * Servlet implementation class rsltEntController
 */
@WebServlet("/rsltEntController")
public class rsltEntController extends HttpServlet {
	EntretienDao entretienDao = new EntretienDao();
	CandidatDao candidatDao = new CandidatDao();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public rsltEntController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acc_rslt = request.getParameter("accept");
		String ref_rslt = request.getParameter("refus");
		
		try {
			int entretienId = Integer.parseInt(request.getParameter("entretienId"));
			
			Entretien selectedentretien = entretienDao.getEntretienById(entretienId);
			Candidat candidat = selectedentretien.getCandidat();
			
			if (acc_rslt != null) {
				candidat.setStatus(CandidatStatus.ADMIS);
			}
			if (ref_rslt != null) {
				candidat.setStatus(CandidatStatus.NON_ADMIS);
			}
			
			Candidat updatedcandidat = candidatDao.updateCandidat(candidat);
			
			//System.out.println(updatedcandidat.getId());
			if (updatedcandidat != null) {
				response.sendRedirect("enseignant/foldersList.jsp");
			}
			}
			catch (NumberFormatException e)
			{
				System.out.println("error");
			}
		
				
		
		

	}

}
