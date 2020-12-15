package gestInscri.controller.enseignant;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.models.dao.EnseignantDao;
import gestInscri.models.entity.Enseignant;
import gestInscri.models.entity.User;

/**
 * Servlet implementation class addEnseignant
 */
@WebServlet("/addEnseignant")
public class addEnseignant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EnseignantDao enseignantDao = new EnseignantDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addEnseignant() {
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
		int telephone = Integer.parseInt(request.getParameter("telephone"));
		String departement = request.getParameter("departement");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(nom + prenom + telephone + departement + email + password);
		if (nom != null && prenom != null && departement != null && email != null && password != null) {
			Enseignant enseignant = enseignantDao
					.createEnseignants(new Enseignant(nom, prenom, email, password, telephone, departement));
			if (enseignant != null) {
				List<Enseignant> enseignantList = enseignantDao.getEnseignants();
				if (enseignantList != null) {
					request.getSession().setAttribute("enseignantList", enseignantList);
					response.sendRedirect(request.getContextPath() + "/admin/teachersList.jsp");
				}
			} else {
				request.setAttribute("error", "Il y a un erreur servenu!");
				getServletContext().getRequestDispatcher("/admin/addTeacher.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("error", "Données invalid!");
			getServletContext().getRequestDispatcher("/admin/addTeacher.jsp").forward(request, response);
		}

	}

}
