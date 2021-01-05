package gestInscri.controller.enseignant;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.enums.CandidatStatus;
import gestInscri.models.dao.CandidatDao;
import gestInscri.models.entity.Candidat;

/**
 * Servlet implementation class admisController
 */
@WebServlet("/admisController")
public class admisController extends HttpServlet {
	CandidatDao condidatDao = new CandidatDao();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admisController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Candidat candidat = (Candidat) request.getSession().getAttribute("foundedCandidat");
		candidat.setStatus(CandidatStatus.ADMIS);
		//candidat.setInscrit(true);

		Candidat updatedCandidat = condidatDao.updateCandidat(candidat);
		if (updatedCandidat != null) {
			request.getServletContext().getRequestDispatcher("/enseignant/folderDetails.jsp?id=" + candidat.getId())
					.forward(request, response);
		}
	}

}
