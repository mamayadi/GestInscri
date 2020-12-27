package gestInscri.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gestInscri.enums.Roles;
import gestInscri.models.dao.AdminDao;
import gestInscri.models.dao.CandidatDao;
import gestInscri.models.dao.EnseignantDao;
import gestInscri.models.dao.UserDao;
import gestInscri.models.entity.Admin;
import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.Enseignant;
import gestInscri.models.entity.User;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao userDao = new UserDao();
	CandidatDao candidatDao = new CandidatDao();
	EnseignantDao enseignantDao = new EnseignantDao();
	AdminDao adminDao = new AdminDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginController() {
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
		/*
		 * try { Admin createdAdmin = new AdminDao().createAdmin(new
		 * Admin("med", "ayadi", "admin@test.com", "123")); PrintWriter out =
		 * response.getWriter(); out.print("Admin created " + createdAdmin); }
		 * catch (Exception e) { PrintWriter out = response.getWriter();
		 * out.print(e.toString()); // System.out.println(e.toString()); }
		 */
		/*
		 * Enseignant ens = enseignantDao.createEnseignants( new
		 * Enseignant("Ahmed", "Jmal", "ahmed.jmal@test.com", "123", 25252525,
		 * "Informatique"));
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = userDao.userLogin(email, password);
		if (user != null) {
			request.getSession().setAttribute("connectedUser", user);
			ServletContext application = getServletContext();
			if (user.getRole() == Roles.Admin) {
				getAdminSession(request, response);
				response.sendRedirect(request.getContextPath() + "/admin/index.jsp");
			} else if (user.getRole() == Roles.Enseignant) {
				getEnseignantSession(request, response, user);
				response.sendRedirect(request.getContextPath() + "/enseignant/index.jsp");
			} else {
				response.sendRedirect(request.getContextPath() + "/candidat/depos.jsp");
			}
		} else {
			request.setAttribute("error", "Compte introuvable!");
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

	protected void getAdminSession(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Candidat> candidatList = candidatDao.getCandidats();
		if (candidatList != null) {
			request.getSession().setAttribute("candidatList", candidatList);
		}
		List<Admin> adminList = adminDao.getAdmins();
		if (adminList != null) {
			request.getSession().setAttribute("adminList", adminList);
		}
		List<Enseignant> enseignantList = enseignantDao.getEnseignants();
		if (enseignantList != null) {
			request.getSession().setAttribute("enseignantList", enseignantList);
		}
	}
	
	protected void getEnseignantSession(HttpServletRequest request, HttpServletResponse response, User user)
			throws ServletException, IOException {
		Enseignant enseignant = enseignantDao.getEnseignantByUser(user);
		if(enseignant != null){
			request.getSession().setAttribute("connectedEnseignant", enseignant);
		}
	}

}
