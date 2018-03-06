<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminInsert Question Check</title>
</head>
<body>
<%

Connection c = null;
ResultSet rs=null;
Statement stmt = null;

String qno="";
String question="";
String op1="";
String op2="";
String op3="";
String op4="";
String answer="";

String sql=null;

qno=request.getParameter("Qno");
question=request.getParameter("Question");
op1=request.getParameter("op1");
op2=request.getParameter("op2");
op3=request.getParameter("op3");
op4=request.getParameter("op4");
answer=request.getParameter("ans");

	try 
	{
		Class.forName("org.postgresql.Driver");
	}
	catch(Exception e)
	{
		e.printStackTrace();
		%><h1>driver error</h1><%
	}
	try
	{
     	c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/postgres","postgres","postgres");
	}
	catch(Exception e)
	{
		e.printStackTrace();
		%><h1>connection error</h1><%
	}
	try
	{
	   stmt = c.createStatement();  
	   //sql="select * from student2 where roll='"+roll+"' and name='"+name+"'";
	   //rs = stmt.executeQuery(sql);
	   sql="insert into exam values('"+question+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+answer+"','"+qno+"')";
	   //sql="delete from student2 where roll='"+roll+"'";
	   //sql="update student2 set name='"+name+"'where roll='"+roll+"'";
	   int r = stmt.executeUpdate(sql);
	   //System.out.println("This is for test"+r);
	   %>
	   <div align="center">
	   <label><font face = "Comic Sans MS" color="#3AB883">Insert Successfully</font></label>
	   <br/>
	   <a href="adminInsertQues.jsp">
	   <font face="Times New Roman, Times, serif" color="#790079" size="+1">
	   Go to previous page</font></a>
	   </div>
	<%	   
	 }
	catch(Exception e)
	{%>
	   <div align="center">
	   <label><font face = "Comic Sans MS" color="red">Insert Error</font></label>
	   <br/>
	   <a href="adminInsertQues.jsp">
	   <font face="Times New Roman, Times, serif" color="#790079" size="+1">
	   Go to previous page</font></a>
	   </div>
	<%
	}
 	%>
</body>
</html>