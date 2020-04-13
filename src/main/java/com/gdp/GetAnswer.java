package com.gdp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetAnswer
 */
public class GetAnswer extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cnt=0;
		try {
		Class.forName("com.mysql.jdbc.Driver");//loading driver for mysql we have this string for different db we have different string  
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
		Statement st=con.createStatement();//now we can start interconeecting with db
		
		for(int i=1;i<3;i++){
			ResultSet rs=st.executeQuery("select * from QuizJava where id=\""+i+"\"");//Resultset for table structure
			if(rs.next()) {
				String s=rs.getString("answer");
				if(s.equals(request.getAttribute(String.valueOf(i))))
					cnt++;
				}
			}

		}
		catch(Exception e) {}
		
			System.out.println(cnt);

	}
}