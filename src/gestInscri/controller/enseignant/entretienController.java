package gestInscri.controller.enseignant;

import java.text.ParseException;
import java.text.SimpleDateFormat;  

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public entretienController() {
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
		String date = request.getParameter("date-ent");
		String time = request.getParameter("time-ent");
		String dateandtime = date + " " + time;
		Candidat candidat = (Candidat) request.getSession().getAttribute("foundedCandidat");
		Enseignant enseignant = (Enseignant) request.getSession().getAttribute("connectedEnseignant");
		SimpleDateFormat format=new SimpleDateFormat("yyyy-mm-dd HH:mm");  
		
		System.out.println(dateandtime);
		
		Date dateEntretien = new Date();
		Entretien entretien = new Entretien(candidat, enseignant, dateEntretien);
		Entretien createdEntretien = entretienDao.createEntretien(entretien);
		if (createdEntretien != null){
			response.sendRedirect("enseignant/foldersList.jsp");
		}
	}

}
