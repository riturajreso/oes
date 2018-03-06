<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Result</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body bgcolor="#FFEAFF">
<%
String regisno=new String(); 
regisno=(String)session.getAttribute("regisno");
String user_name=new String(); 
user_name=(String)session.getAttribute("user_name");
//int marks=0;
//marks=(int)session.getAttribute("marks");
String user_marks=new String(); 
user_marks=(String)session.getAttribute("user_marks");
String regnot=new String(); 
regnot=(String)session.getAttribute("regnot");
String regnotNUM=new String(); 
regnotNUM=(String)session.getAttribute("regnotNUM");
//String l_name=new String(); 
//l_name=(String)session.getAttribute("l_name");
%>
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#3AB883" size="+4">ONLINE EXAMINATION SYSTEM</font></label>
</div>
<div align="left" id="RESULT">
     		<a href="home.html"><font face="frankruehl" color="blue">Home</font></a>							
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		<a href="contactus.jsp"><font face="frankruehl" color="blue">Contact Us</font></a>			
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="login.jsp"><font face="frankruehl" color="blue">Give Exam</font></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="showresult.jsp"><font face="frankruehl" color="blue">Result</font></a>
</div>
<div align="center" id="table1">
<form name="index" method="POST" action="ContollerServlet/showresult">
<table>
	<tr>
		<td style="width:200px" align="center">
        	<div><label><font face="Comic Sans MS" color="#0000CC" size="2"> REGISTRATION NUMBER </font></label></div>
      	</td>
        <td>
            <input type="text" name="regno">
        </td>
    </tr>
    <tr>
    	<td colspan="2">
        	<br/>
        </td>
    </tr>
</table>
<input type="submit" name="submit" value="SUBMIT" id="forsubmit">
<br/>
<br/>
<a href="home.html">Home</a>
<%
if(regisno!=null && regisno.length()>0)
{
	%>
	<table width="80%" cellpadding="1" cellspacing="2" border="1">
		<th bgcolor="#009966">Registration Number</th>
    	<th bgcolor="#009966" width="40%">Name</th>
    	<th bgcolor="#009966" width="20%">Marks Obtained</th>
    	<th bgcolor="#009966">Total Marks</th>
    	<tr>
    		<td align="center">
    			<%=regisno%>
    		</td>
    		<td align="center">
    			<%=user_name%>
    		</td>
    		<td align="center">
    			<%=user_marks%>
    		</td>
    		<td align="center">
    			20
    		</td>
    	</tr>
	</table>
<%
}
else if(regnot!=null && regnot.length()>0)
{
%>
	<div align="center">
	<p><font color="Red" size="+1" face="Comic Sans MS, cursive">
	<%="Registration Number : "+regnotNUM%>
	<br/>
	Sorry....Your result not here</font></p>
	</div>
<%} 
	session.removeAttribute("regnot");
	session.removeAttribute("regisno");
	session.removeAttribute("user_name");
	session.removeAttribute("regnotNUM");
	//session.removeAttribute("l_name");
	session.removeAttribute("user_marks");
%>
</form>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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