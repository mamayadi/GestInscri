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

import gestInscri.models.dao.AdminDao;
import gestInscri.models.dao.UserDao;
import gestInscri.models.entity.Admin;
import gestInscri.models.entity.User;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		/*try {
			Admin createdAdmin = new AdminDao().createAdmin(new Admin("med", "ayadi", "admin@test.com", "123"));
			PrintWriter out = response.getWriter();
			out.print("Admin created " + createdAdmin);
		} catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.print(e.toString());
			// System.out.println(e.toString());
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * String login = request.getParameter("login"); String password =
		 * request.getParameter("password"); User user = new
		 * UserDao().userLogin(login, password); if (user != null) {
		 * request.getSession().setAttribute("connectedUser", user);
		 * ServletContext application = getServletContext(); ArrayList<User>
		 * users = (ArrayList<User>) application.getAttribute("users"); if
		 * (users == null) { List<User> listUser = new UserDao().getUsers();
		 * application.setAttribute("users", listUser); }
		 * response.sendRedirect("welcome.jsp"); } else {
		 * request.setAttribute("error", "Compte introuvable!");
		 * getServletContext().getRequestDispatcher("login.jsp").forward(
		 * request, response); }
		 */
	}

}
