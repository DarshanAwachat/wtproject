package com.gdp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ImageHelper
 */
public class ImageHelper extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		byte[] bytes=(byte[]) request.getAttribute("img");
		if (bytes != null && bytes.length > 0) {
			 response.setContentType("image/jpg");
			 response.getOutputStream().write(bytes);
			 response.getOutputStream().flush();
			 response.getOutputStream().close();
			}
	
	}

}
