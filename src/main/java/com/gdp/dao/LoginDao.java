package com.gdp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class LoginDao {
	public boolean getLogin(String name,String pwd) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//loading driver for mysql we have this string for different db we have different string  
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
			Statement st=con.createStatement();//now we can start interconeecting with db
			ResultSet rs=st.executeQuery("select * from Login where name1=\""+name+"\"");//Resultset for table structure
			 //shifting pointer between different rows
			
			//System.out.println(rs.getString("pwd"));	
			if(rs.next())
			if(pwd.equals(rs.getString("pwd")))
						return true;
			
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
