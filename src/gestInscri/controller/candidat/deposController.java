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

import gestInscri.models.dao.CandidatDao;
import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.DocumentsPedagogiques;
import gestInscri.utils.FileManager;

import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Enumeration;
import java.util.Properties;

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
		// get the file chosen by the user
		Part diplomePart = request.getPart("diplome");
		if(diplomePart != null){
			String uploadedDiplome = fileManger.saveFile(diplomePart, candidat.getUser());
			DocumentsPedagogiques docs = new DocumentsPedagogiques();
			docs.setDiplome(uploadedDiplome);
			candidat.setDocumentsPedagogiques(docs);
			candidatDao.updateCandidat(candidat);
		}
	}

}
