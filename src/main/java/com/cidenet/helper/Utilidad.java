package com.cidenet.helper;

import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;

public class Utilidad {

	public static String saveFile(MultipartFile multiPart, HttpServletRequest request) {
		
		String nombreOriginal;
		String nombreFinal;

		nombreOriginal = multiPart.getOriginalFilename();
		System.out.println("Nombre de la imagen " + nombreOriginal);

		nombreOriginal = nombreOriginal.replace(" ", "");
		nombreFinal = randomAlphaNumeric(2) + nombreOriginal;
		System.out.println("Nombre FINAL de la imagen " + nombreFinal);

		// obtenemos la ruta del directorio images:
		// apache-tomcat/webApp/resources/images/
		String rutaFinal = request.getServletContext().getRealPath("/RESOURCES/images/");
		System.out.println("ruta final de la imagen: "+rutaFinal);
		try {
			File imageFile = new File(rutaFinal + nombreFinal);
			multiPart.transferTo(imageFile);
			return nombreFinal;
		} catch (IOException e) {
			System.out.println("Error " + e.getMessage());
			return null;
		}
	}

	public static String randomAlphaNumeric(int count) {
		String CARACTERES = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
			int character = (int) (Math.random() * CARACTERES.length());
			builder.append(CARACTERES.charAt(character));
		}
		return builder.toString();
	}
}
