package gestInscri.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.models.dao.CandidatDao;
import gestInscri.models.entity.Candidat;

/**
 * Servlet implementation class registerController
 */
@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CandidatDao candidatDao = new CandidatDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerController() {
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
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String mail = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(nom + prenom + mail + password);
		if (nom != null && prenom != null && mail != null && password != null) {
			Candidat registredCandidat = candidatDao.createCandidat(new Candidat(nom, prenom, mail, password));
			if (registredCandidat != null) {
				request.getSession().setAttribute("connectedUser", registredCandidat.getUser());
				ServletContext application = getServletContext();
				response.sendRedirect(request.getContextPath() + "/Enseignant/index.jsp");
			} else {
				request.setAttribute("error", "Probleme lors de création du compte!");
				getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("error", "Données invalid!");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}

	}

}
