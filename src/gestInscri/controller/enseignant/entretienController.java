package gestInscri.controller.enseignant;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.enums.CandidatStatus;
import gestInscri.models.dao.CandidatDao;
import gestInscri.models.dao.EnseignantDao;
import gestInscri.models.dao.EntretienDao;
import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.Enseignant;
import gestInscri.models.entity.Entretien;

/**
 * Servlet implementation class entretienController
 */
@WebServlet("/entretienController")
public class entretienController extends HttpServlet {
	EntretienDao entretienDao = new EntretienDao();
	CandidatDao candidatDao = new CandidatDao();
	EnseignantDao enseignantDao = new EnseignantDao();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public entretienController() {
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
		try {
			String date = request.getParameter("date-ent");
			String time = request.getParameter("time-ent");
			String dateandtime = date + " " + time;
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			Date dateEntretien = format.parse(dateandtime);

			Candidat candidat = (Candidat) request.getSession().getAttribute("foundedCandidat");
			Enseignant enseignant = (Enseignant) request.getSession().getAttribute("connectedEnseignant");
			candidat.setStatus(CandidatStatus.EN_COURS);
			Candidat updatedCandidat = candidatDao.updateCandidat(candidat);
			
			Entretien entretien = candidat.getEntretien();
			Entretien createdOrUpdatedEntretien = null;
			if (entretien == null) {
				entretien = new Entretien(candidat, enseignant, dateEntretien);
				createdOrUpdatedEntretien = entretienDao.createEntretien(entretien);

			} else {
				entretien.setDateEntretien(dateEntretien);
				createdOrUpdatedEntretien = entretienDao.updateEntretien(entretien);
			}

			if (createdOrUpdatedEntretien != null) {
				List<Entretien> entretienList = enseignant.getEntretienList();
				if (entretienList != null) {
					request.getSession().setAttribute("entretienList", entretienList);
				}
				response.sendRedirect("enseignant/foldersList.jsp");
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

}
