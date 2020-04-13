<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement,java.sql.*,java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
<head>
<title>multiple-choice quiz form</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body bgcolor=#ffffff>
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
<h2><center>JAVA QUIZ</center></h2>
<div class="container" style="font-size:25px ">
<form  action="answer2.jsp" method="post">

<b>Check the answer to each multiple-choice question, and click on the "Send Form" button to submit the information.</b>
<%
String p;
try {

	String q="";
	Class.forName("com.mysql.jdbc.Driver");//loading driver for mysql we have this string for different db we have different string  
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","0000");
	Statement st=con.createStatement();//now we can start interconeecting with db
	String cntQ= "SELECT COUNT(*) FROM QuizJava";
   	int cnt,x,flag;
   	int arr[];
    //Statement st=conn.createStatement();
    ResultSet rd= st.executeQuery(cntQ);
  if(rd.next()) {
    // constructs SQL statement
	cnt=Integer.parseInt(rd.getString(1));

%>

<% 
	arr=new int[cnt+1];
	for(int i=1;i<(cnt+1);i++)
		arr[i]=0;
	for(int j=1;j<11;j++){
		int i=(int)(Math.random()*cnt)+1;
	 	if(arr[i]==0)
	 		arr[i]=1;
		else{
			flag=0;
			for(int k=i+1;k<(cnt+1);k++)
				if(arr[k]==0){
					i=k;
					arr[i]=1;
					flag=1;
					break;
				}
			if(flag==0){
			for(int k=1;k<i;k++){
				if(arr[k]==0){
					i=k;
					arr[i]=1;
					break;
				}
			}
			}
		}
	 	ResultSet rs=st.executeQuery("select * from QuizJava where id=\""+i+"\"");
		if(rs.next()){
	 		p=rs.getString("Problem");
%>
			<div class="row">
	 		<P><%=j%>. <%=p%><BR>
	 		<%
	 			if(rs.getString("pts")!=null){
	 				q=rs.getString("pts");
	 		%>
		 		<img src="Images/<%=q%>"/><BR>
	 		
	 		<% 
	 			}
	 		%>
			<%p=rs.getString("opt1");%>
			<input type="radio" name="<%=i%>" value="<%=p%>" ><%=p%><BR>
			<%p=rs.getString("opt2");%>
			<input type="radio" name="<%=i%>" value="<%=p%>" ><%=p%><BR>
			<%p=rs.getString("opt3");%>
			<input type="radio" name="<%=i%>" value="<%=p%>" ><%=p%><BR>
			<%p=rs.getString("opt4");%>
			<input type="radio" name="<%=i%>" value="<%=p%>" ><%=p%><BR>
<%		}%>
</div>
<%
	}
	for(int l=1;l<arr.length;l++)
		System.out.println(arr[l]+"  "+l);
	for(int l=1;l<arr.length;l++){
		if(arr[l]==1)
			x=st.executeUpdate("update QuizJava  set val=1 where id=\""+l+"\"");
		else
			x=st.executeUpdate("update QuizJava  set val=0 where id=\""+l+"\"");
	}
	
  }
  	
}
catch(Exception e) {
	System.out.println(e);
}
%>
<BR>
<div class="container">
	<button type="submit" class="btn btn-outline-success btn-lg">Submit</button>
	<button type="reset" class="btn btn-outline-warning btn-lg">Reset</button><BR><BR>
</div>
</form>
</div>
</body>
</html>