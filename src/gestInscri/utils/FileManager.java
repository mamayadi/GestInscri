package gestInscri.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import javax.servlet.http.Part;

import gestInscri.models.entity.Candidat;
import gestInscri.models.entity.User;

public class FileManager {

	public FileManager() {
		// TODO Auto-generated constructor stub
	}

	public String saveFile(Part filePart, User user) throws IOException {
		// get the InputStream to store the file somewhere
		InputStream fileInputStream = filePart.getInputStream();
		// for example, you can copy the uploaded file to the server
		// note that you probably don't want to do this in real life!
		// upload it to a file host like S3 or GCS instead
		String directoryName = System.getProperty("user.home") + "/workspace/GestInscri/WebContent/uploads/"
				+ user.getNom() + "-" + user.getPrenom();
		File directory = new File(String.valueOf(directoryName));
		if (!directory.exists()) {
			directory.mkdir();
		}
		File fileToSave = new File(directoryName + "/" + filePart.getSubmittedFileName());
		Files.copy(fileInputStream, fileToSave.toPath(), StandardCopyOption.REPLACE_EXISTING);
		// get the URL of the uploaded file
		return "uploads/" + user.getNom() + "-" + user.getPrenom() +"/"+ filePart.getSubmittedFileName();
	}

}
