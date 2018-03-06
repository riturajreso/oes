<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Success</title>
<link rel="stylesheet" type="text/css" href="start_examPage.css"/>
</head>
<body bgcolor="#FFEAFF">
<%
String s1=new String();
String email=new String();

s1=(String)session.getAttribute("regpassno");
email=(String)session.getAttribute("email");

	if(s1.equals("This Email id already Registered"))
	{
	%>
	<div align="center" id="bold1">
	<font face="frankruehl" color="red" size="+3">Registration Failed</font>
	</div>
	<div align="center" id="table1">
	<font face = "Comic Sans MS" color="red"><%=email+"--- Sorry "+s1%></font>
	<br/>
	<br/>
	<a href="registration.html">
    <font face="frankruehl" color="red" size="+1">Go to Registration Page</font>
    </a>
	</div>
	<%} 
	else
	{
	%>
	<div align="center" id="bold1">
	<font face="frankruehl" color="#3AB883" size="+3">Registration Success</font>
	</div>
	<div align="center" id="table1">
	<font face = "Comic Sans MS" color="red"><%=s1%></font>
	<br/>
	<br/>
	<a href="login.jsp">
	<font face="frankruehl" color="blue" size="+1">Go to Login Page</font>
	</a>
	<br/>
	<br/>
    <img src="Picture/result.jpg"/>
	</div>
	<%} %>
<br/>
<div align="center" id="footer">
<table cellpadding="1" cellspacing="2">
	<tr>
		<td>
        	<div align="center"><h4>SAROJ MOHAN INSTITUTE OF TECHNOLOGY</h4></div>
		</td>
  	</tr>
</table>
</div>
</body>
</html>