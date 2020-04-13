<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

<header class="bg-light">
<div class="container">
 <div class="row">
 	<div class="col-sm-2">
 		<div class="media">
 			<img src="Images/vit.png" class="d-flex mr-3 img-thumbnail align-self-center order-sm-last">
 		</div>
 	</div>
 	<div class="col-sm-10">
 		<h3 class="mt-3 mb-3">Vishwakarma Institute Of Technology</h3>
	</div>
</div>
</div>
</header>
<% int i,flag=0,cnt=0,r=1;
	String p,ans,s,q;
%>
<%try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
	Statement st=con.createStatement();
	String cntQ= "SELECT COUNT(*) FROM QuizJava";
   	int cnt1;
    //Statement st=conn.createStatement();
    ResultSet rd= st.executeQuery(cntQ);
  if(rd.next()) {
    // constructs SQL statement
	cnt1=Integer.parseInt(rd.getString(1));
	for( i=1;i<(cnt1+1);i++){
%>
	<div class="row">
	<% 
		ResultSet rs=st.executeQuery("select * from QuizJava where id=\""+i+"\"");//Resultset for table structure
		if(rs.next()){
			flag=0;
		if(rs.getInt("val")==1){
		 s=rs.getString("answer");
	 	ans=request.getParameter(""+i);
		p=rs.getString("opt1");	
		if(p.equals(ans))
		{		
			if(p.equals(s))
				flag=1;
		}
	
		p=rs.getString("opt2");
		if(p.equals(ans))
		{	
			if(p.equals(s))
				flag=1;
		}
		p=rs.getString("opt3");
		if(p.equals(ans))
		{	
			if(p.equals(s))
				flag=1;
		}
		p=rs.getString("opt4");
		if(p.equals(ans))
		{	
			if(p.equals(s))
				flag=1;
		}
		if(flag==1)
			cnt++;
	
		}
		}
	%>
	</div>
	<% 
	}
}
}
catch(Exception e){}
%>
<%if(cnt < 4){ %>
<h2><div class="row">
 	<div class="col" style="padding-left:800px">The Result is
 	</div>
 	<div class="col" style="color:red;padding-right:650px"><%=cnt%>/10</div></h2>
<% }else{%>
h2><h2><div class="row">
 	<div class="col" style="padding-left:800px">The Result is
 	</div>
 	<div class="col" style="color:red;padding-right:650px"><%=cnt%>/10</div></h2>
<%} %>
<div class="container" style="font-size:25px ">

<%
try{
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
	Statement st=con.createStatement();
	String cntQ= "SELECT COUNT(*) FROM QuizJava";
   	int cnt1;
    //Statement st=conn.createStatement();
    ResultSet rd= st.executeQuery(cntQ);
  if(rd.next()) {
    // constructs SQL statement
	cnt1=Integer.parseInt(rd.getString(1));

	for( i=1;i<(cnt1+1);i++){
%>
	<div class="row">
	<% 
		ResultSet rs=st.executeQuery("select * from QuizJava where id=\""+i+"\"");//Resultset for table structure
		if(rs.next()){
			if(rs.getInt("val")==1){
		flag=0;
	 	p=rs.getString("Problem");
	 	
	 	out.println("<P>"+r+". "+p+"<BR>");
		 s=rs.getString("answer");
		 r++;
		//p=rs.getString("opt1");
	 	 ans=request.getParameter(""+i);
	 	if(rs.getString("pts")!=null){
				q=rs.getString("pts");
		%>
				<img src="Images/<%=q%>"/><BR>
	 		
		<% 
	 	}
		p=rs.getString("opt1");	
		if(p.equals(ans))
		{	
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" checked>"+p+"<BR>");
			if(p.equals(s))
				flag=1;
		}
		else
		{
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" >"+p+"<BR>");
		}
		p=rs.getString("opt2");
		if(p.equals(ans))
		{	
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" checked>"+p+"<BR>");
			if(p.equals(s))
				flag=1;
		}
		else
		{
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" >"+p+"<BR>");
		}
		p=rs.getString("opt3");
		if(p.equals(ans))
		{	
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" checked>"+p+"<BR>");
			if(p.equals(s))
				flag=1;
		}
		else
		{
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" >"+p+"<BR>");
		}
		p=rs.getString("opt4");
		if(p.equals(ans))
		{	
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" checked>"+p+"<BR>");
			if(p.equals(s))
				flag=1;
		}
		else
		{
			out.println("<input type=\"radio\" name=\""+i+"\" value=\""+p+"\" >"+p+"<BR>");
		}
	  
		if(flag==0){%>
			<span style="color:red">Wrong Answer</span><BR>
		<% }else{%>
			<span style="color:green">Correct Answer</span><BR>
		<%	}
		}
	%>
	</div>
	<% }
		}
	}
}
catch(Exception e){}
%>

</div>
</body>
</html>