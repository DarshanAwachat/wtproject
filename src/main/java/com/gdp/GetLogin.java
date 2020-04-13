package com.gdp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gdp.dao.LoginDao;


public class GetLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("u");
		String pwd=request.getParameter("p");
		
		LoginDao ld=new LoginDao();
		
		if(ld.getLogin(name, pwd)) {	
			RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd= request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
	}

}
