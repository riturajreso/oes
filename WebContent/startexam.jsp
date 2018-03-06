<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Start Exam Page</title>
<link rel="stylesheet" type="text/css" href="start_examPage.css"/>
</head>
<body bgcolor="#FFEAFF">
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#3AB883" size="+4">ONLINE EXAMINATION SYSTEM</font></label>
</div>
<div align="left" id="RESULT">
<font face="frankruehl" color="blue" size="+1">Welcome&nbsp;&nbsp;<%=session.getAttribute("getname")%></font>
</div>
<div align="center" id="table1">
<div align="center">
<table width="100%" cellpadding="1" cellspacing="2">
	<tr>
		<td align="left">
			<font face="frankruehl" size="+1">
			Registration&nbsp;Number&nbsp;:&nbsp;&nbsp;<%=session.getAttribute("regno")%>
			</font>
		</td>
		<td align="right">
			<a href="login.jsp"><font face="frankruehl" color="blue" size="+1">SignOut</font></a>
		</td>
	</tr>
</table>
</div>
<form name="form1" method="post" action="ContollerServlet/startexam">
<% String msg=(String)session.getAttribute("errMsg");
    if(msg!=null && msg.length()>0)
    {
   		out.println("<div align='justify'><label><font face = 'Comic Sans MS' color='red' size='+2'>"+msg+"</font></label></div>");
    } 
    session.removeAttribute("errMsg");
%>
<br/>
<div align="center">
<font face="frankruehl" color="blue" size="+2" style="text-decoration:underline">IMPORTANT RULES</font>	
</div>
<br/>
<div align="center">
<font face="Calibri" size="+2">Read the instruction carefully</font>
</div>
<br/>
<div align="left">
<table width="100%" cellpadding="1" cellspacing="2">
	<tr>
		<td>
        	<img src="Picture/instruction.jpg"/>
        </td>
        <td>
        	<font face="Calibri" size="+1">
				1.&nbsp;There is 20 Question to attempt.<br/>
				2.&nbsp;Paper is of 25 minutes.<br/>
				3.&nbsp;Each question carries 1 mark.<br/>
				4.&nbsp;There is also negative marking -1 for each wrong answer.<br/>
				5.&nbsp;Do not close paper window because of you are eligible for paper only one time..<br/>
			</font>
        </td>
	</tr>
</table>
</div>
<br/>
<div align="center">
<img src="Picture/goodluck.jpg"/>
</div>
<br/>
<input type="submit" name="Submit" value="Start_Exam" id="forsubmit"/>
</form>
</div>
<br/>
<br/>
<br/>
<br/>
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