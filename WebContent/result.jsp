<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result page</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body bgcolor="#FFEAFF">
<%
   Integer c=(Integer)session.getAttribute("marks");
   int count=c.intValue();    
%>
<div id="table1" align="center">
<font color="#897AE0" size="+4" face="Calibri">EXAMINATION RESULT</font>
</div>
<div align="justify" id="RESULT">
<div align="right">
<font face="frankruehl" color="#CCCCCC" size="+1"><a href="login.jsp">SignOut</a></font>
</div>
<font size="+1" face="Comic Sans MS, cursive">
<p>&nbsp;&nbsp;&nbsp;Candidate Name : <%=session.getAttribute("getname")%></p>
&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;Registration Number : <%=session.getAttribute("regno")%></p>
&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;Total Number of question : 20</p>
&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;Number of Answered Question : <%=session.getAttribute("attempt")%></p>
&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;Number of Not_Answer Question : <%=session.getAttribute("not_attempt")%></p>
&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;Number of Correct Answer : <%=session.getAttribute("correct")%></p>
&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;Number of Wrong Answer : <%=session.getAttribute("wrong")%></p>
</font>
<%
	if(count>0)
	{
	%><font color="#0000FF" size="+1" face="Comic Sans MS, cursive">
	&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;YOUR MARKS : <%=count %></p> 
	</font>
	<div align="center">
	<p><font color="#0000FF" size="+1" face="Comic Sans MS, cursive">
	Congratulations....You Passed this Exam</font></p>
	<img src="Picture/result.jpg" width="550" height="150"/>
	</div>
	<%
	}
	else
	{%>
	<font color="red" size="+1" face="Comic Sans MS, cursive">
	&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;YOUR MARKS : <%=count %></p> 
	</font>
	<div align="center">
	<p><font color="Red" size="+1" face="Comic Sans MS, cursive">
	Sorry....You Failed this Exam</font></p>
	</div>
	<%	
	}
	%>
</div>
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

