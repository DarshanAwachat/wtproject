package com.gdp;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * Servlet implementation class FileToDB
 */
public class FileToDB extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
		Statement st=con.createStatement();
		String cntQ= "SELECT COUNT(*) FROM QuizJava";
	   	int cnt1,cnt2;
	    //Statement st=conn.createStatement();
	    ResultSet rd;
		rd = st.executeQuery(cntQ);
			 if(rd.next()) {
				 cnt1=Integer.parseInt(rd.getString(1));
				 cnt1++;
		         File excelfile=new File("/home/darshan/eclipse-workspace/jee/girish/src/main/"+request.getAttribute("name"));
		         FileInputStream fis=new FileInputStream(excelfile);
		         
		         HSSFWorkbook workbook=new HSSFWorkbook(fis);
		         HSSFSheet sheet= workbook.getSheetAt(0);
		         
		         Iterator<Row> rowIt = sheet.iterator();
		         while(rowIt.hasNext()) {
		        	 Row row=rowIt.next();
		        	 String sql = "INSERT INTO QuizJava (id,Problem,opt1,opt2,opt3,opt4,answer) values (?,?,?,?,?,?,?)";
			         PreparedStatement statement = con.prepareStatement(sql);
		        	 Iterator<Cell> cellIterator= row.cellIterator();
		        	 statement.setInt(1,cnt1++ );
		        	 cnt2=0;
		        	 while(cellIterator.hasNext()) {
		        		 	Cell cell = cellIterator.next();
		        		 	if(cnt2==0) {
		        		 		statement.setString(2,cell.toString());
		        		 	}
		        		 	else if(cnt2==1) {
		        		 		statement.setString(3,cell.toString());
		        		 	}
		        		 	else if(cnt2==2) {
		        		 		statement.setString(4,cell.toString());
		        		 	}
		        		 	else if(cnt2==3) {
		        		 		statement.setString(5,cell.toString());
		        		 	}
		        		 	else if(cnt2==4) {
		        		 		statement.setString(6,cell.toString());
		        		 	}
		        		 	else if(cnt2==5) {
		        		 		statement.setString(7,cell.toString());
		        		 	}
		        		 	cnt2++;
		        	 }
		        	 @SuppressWarnings("unused")
					int row3 = statement.executeUpdate();
		         }
			 }
		 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
		  
	  
	}

}
