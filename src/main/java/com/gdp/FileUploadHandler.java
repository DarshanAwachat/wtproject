package com.gdp; 
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

 

public class FileUploadHandler extends HttpServlet {
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
		try {
			@SuppressWarnings("unchecked")
			List<FileItem> multifiles = sf.parseRequest(request);
			for(FileItem item : multifiles) {
				item.write(new File("/home/darshan/eclipse-workspace/jee/girish/src/main/java"+item.getName()));
				request.setAttribute("name","java"+item.getName());
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//request.setAttribute("java"+i.);
		RequestDispatcher rd= request.getRequestDispatcher("ftb");
		rd.forward(request, response);
		
	}
	
}