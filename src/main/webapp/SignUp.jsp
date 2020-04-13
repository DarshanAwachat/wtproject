<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement,java.sql.*,java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
try{
	String s="student";
	String t="teacher";
	String usr=request.getParameter("u");
	String pwd=request.getParameter("p");
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
	Statement st=con.createStatement();
if(s.equals(request.getParameter("opt"))){
	PreparedStatement stmt=con.prepareStatement("insert into Login(name1,pwd) values (?,?)");
	stmt.setString(1, usr);
	stmt.setString(2, pwd);
	int rs= stmt.executeUpdate();
	//ResultSet rs= st.executeQuery("select * from Login where name1=\""+usr+"\"");
	
				RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
}
		
else{
	
	PreparedStatement stmt=con.prepareStatement("insert into Teacher(tid,pwd) values (?,?)");
	stmt.setString(1, usr);
	stmt.setString(2, pwd);
	int rs= stmt.executeUpdate();
	
				RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);

		
	}	
}
catch(Exception e){}

%>
</body>
</html>