<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>AdminLogin Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body bgcolor="#000066">
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#3AB883" size="+4">ONLINE EXAMINATION SYSTEM</font></label>
</div>
<div align="center" id="RESULT">
<form name="form1" method="post" action="ContollerServlet/adminlogin">
	<div align="center">
    <font face="Comic Sans MS, cursive" color="#0000CC" size="4">
    <strong>ADMIN LOGIN</strong></font>
    <br/>
    <br/>
    <table id="ADMINlogin">
    	<tr>
    		<td>
    			<label><font face="Comic Sans MS" color="#0000CC" size="2">ENTER MEMBER ID</font></label>
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
    			<input type="text" name="u_id">
    		</td>
        </tr>
        <tr>
    		<td colspan="2">
				<br/>
    		</td>
        </tr>
        <tr>
    		<td>
    			<label><font face="Comic Sans MS" color="#0000CC" size="2">ENTER PASSWORD</font></label>
            	&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
    			<input type="password" name="password">
    		</td>
        </tr>
        <tr>
    		<td colspan="2">
				<br/>
    		</td>
        </tr>
        <% String ErrMsg=(String)session.getAttribute("adminErrMsg");
      	if(ErrMsg!=null && ErrMsg.length()>0)
    	{
        %>
        <tr>
    		<td colspan="2">
				<%out.println("<div align='center'><label><font face = 'Comic Sans MS' color='red' size='2'>"+ErrMsg+"</font></label></div>");%>
    		</td>
        <%} session.removeAttribute("adminErrMsg");%>
        </tr>
        <tr>
    		<td colspan="2" align="center">
				<input type="submit" name="Submit" value="Sign_In" id="forsubmit">
    		</td>
    		<td><a href="home.html">Home</a></td>
        </tr>
     </table> 
     </div>         	                 
</form>
<br/>
<br/>
</div>
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