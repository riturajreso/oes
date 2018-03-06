<%@ page import="java.sql.*,java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check</title>
</head>
<body>
<%

Connection c = null;
ResultSet rs=null;
Statement stmt = null;
String sql=null;

String f_name="";
String l_name="";
String email="";
String pass_word="";
String dob="";
String birthday_year="";
String birthday_month="";
String birthday_day="";
String sex="";
int reg=0;
String regno="";

f_name=request.getParameter("FirstName");
l_name=request.getParameter("LastName");
email=request.getParameter("Email");
//pass_word=request.getParameter("Password");
birthday_year=request.getParameter("birthday_year");
birthday_month=request.getParameter("birthday_month");
birthday_day=request.getParameter("birthday_day");
dob=(String)(birthday_year+"-"+birthday_month+"-"+birthday_day);
sex=request.getParameter("Sex");
pass_word=(f_name.substring(0,1))+(l_name.substring(0,1))+birthday_day+birthday_month+birthday_year;
Random r=new Random();
reg=r.nextInt();
if(reg<0)
{
	reg=reg*(-1);
}
regno=f_name.substring(0,3);
regno=regno.toUpperCase();
regno=(String)(regno+reg);

	try 
	{
		Class.forName("org.postgresql.Driver");
	}
	catch(Exception e)
	{%>
	   	<h1>driver error</h1><%
	}
	try
	{
     	c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/postgres","postgres","postgres");
	}
	catch(Exception e)
	{%>
	   <h1>connection error</h1><%
	}
	try
	{
	   stmt = c.createStatement();  
	   sql="select email from registration where email='"+email+"'";
	   rs = stmt.executeQuery(sql);
	   if(rs.next())
	   {
		   %>
		   <div align="center"><label><font face = "Comic Sans MS" color="red">Registration Error</font></label></div>
		   <a href="login.jsp">Registration</a>
		   <% 
	   }
	   else
	   {
	   sql="insert into registration values('"+f_name+"','"+l_name+"','"+email+"','"+pass_word+"','"+dob+"','"+sex+"','"+regno+"')";
	   //sql="delete from student2 where roll='"+roll+"'";
	   //sql="update student2 set name='"+name+"'where roll='"+roll+"'";
	   int test = stmt.executeUpdate(sql);
	   //System.out.println("This is for test"+test);
	   %>
	   <div align="center"><label><font face = "Comic Sans MS" color="red"><%=regno %></font></label></div>
	   <div align="center"><label><font face = "Comic Sans MS" color="red"><%=pass_word %></font></label></div>
	   <a href="login.jsp">Registration</a>
	    <%
	   }
	}
	   
	
	catch(Exception e)
	{%>
	   <div align="center"><label><font face = "Comic Sans MS" color="red">Registration Error</font></label></div>
	    <%
	}

 %>
</body>
</html>