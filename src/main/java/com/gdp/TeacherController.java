package com.gdp;

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
 
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class TeacherController extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/student";
    private String dbUser = "root";
    private String dbPass = "0000";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String Problem = request.getParameter("Problem");
        String opt1 = request.getParameter("opt1");
        String opt2 = request.getParameter("opt2");
        String opt3 = request.getParameter("opt3");
        String opt4 = request.getParameter("opt4");
        String answer = request.getParameter("answer"); 
        String pts = request.getParameter("pts");
        if(Problem.contentEquals("")||opt1.contentEquals("")||opt2.contentEquals("")||opt3.contentEquals("")||opt4.contentEquals("")||answer.contentEquals("")) {
        	RequestDispatcher rd= request.getRequestDispatcher("TeacherHome.jsp");
 			rd.forward(request, response);
 			return;
        }
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            String cntQ= "SELECT COUNT(*) FROM QuizJava";
            String cnt="";
            Statement st=conn.createStatement();
            ResultSet rs= st.executeQuery(cntQ);
          if(rs.next()) {
            // constructs SQL statement
        	cnt=rs.getString(1);
            String sql = "INSERT INTO QuizJava (id,Problem,opt1,opt2,opt3,opt4,answer,photo,pts) values (?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1,Integer.parseInt(cnt)+1);
            statement.setString(2, Problem);
            statement.setString(3, opt1);
            statement.setString(4, opt2);
            statement.setString(5, opt3);
            statement.setString(6, opt4);
            statement.setString(7, answer);
            if(pts.equals(""))
            	statement.setString(9,null);
            else
            	statement.setString(9, pts);
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                if(inputStream.available()!=0)
                	statement.setBlob(8, inputStream);
                else {
                	inputStream=null;
                	statement.setBlob(8, inputStream);
                }
             }
 
            // sends the statement to the database server
            @SuppressWarnings("unused")
			int row = statement.executeUpdate();
          }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
          
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
        }
    }
}