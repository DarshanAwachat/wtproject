<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement,java.sql.*" %>
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
	PreparedStatement stmt=con.prepareStatement("select * from Login where name1=?");
	stmt.setString(1, usr);
	ResultSet rs= stmt.executeQuery();
	//ResultSet rs= st.executeQuery("select * from Login where name1=\""+usr+"\"");
	if(rs.next()){
		if(pwd.equals(rs.getString("pwd"))){
				RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}
		else{
				RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
	}
		else{
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}		
else{
	
	PreparedStatement stmt=con.prepareStatement("select * from Container where idContainer=?");
	stmt.setString(1, usr);
	ResultSet rsd= stmt.executeQuery();

//	ResultSet rs= st.executeQuery("select * from LoginTeacher where tid=\""+usr+"\"");
	
	if(rsd.next()){
		System.out.println(rsd.getString("ContainerPwd"));
		if(pwd.equals(rsd.getString("ContainerPwd"))){		
				RequestDispatcher rd= request.getRequestDispatcher("TeacherHome.jsp");
				rd.forward(request, response);
			}
		else{
				RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
				
			}
	}
		else{
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			System.out.println("hi");
		}
	}	
}
catch(Exception e){}

%>
</body>
</html>