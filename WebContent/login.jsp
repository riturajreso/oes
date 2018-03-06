<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body bgcolor="#FFEAFF">
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
<div align="center" id="login1">
<form name="form1" method="post" action="ContollerServlet/login">
<table width="100%" cellpadding="1" cellspacing="2">
	<tr>
    	<td width="50%">
        	<img src="Picture/login.jpg" width="550" height="222">
        </td>
        <td>
        </td>
        <td>
        </td>
		<td id="RESULT">
  			<table width="100%" height="210" cellpadding="1" cellspacing="2">
  				<tr>
    				<td colspan="2">
        				<div align="center"><font face="Comic Sans MS" color="#0000CC" size="4">
        				<strong>USER LOGIN</strong></font></div>
       				</td>
				</tr>
    			<tr>
    				<td colspan="2"><br>
    				</td>
    			</tr>
    			<tr>
      				<td>
        				<div align="right"><label><font face="Comic Sans MS" color="#0000CC"
                        size="2">REGISTRATION NUMBER</font></label></div>
      				</td>
      				<td>
                    	<input type="text" name="regno">
                    </td>
    			</tr>
    			<tr>
      				<td>
                    	<div align="right"><label><font face="Comic Sans MS" color="#0000CC" 
                        size="2">PASSWORD</font></label></div>
                 	</td>
      				<td>
                    	<input type="password" name="password">
                 	</td>
    			</tr>
    			<% String msg=(String)session.getAttribute("errMsg");
      			if(msg!=null && msg.length()>0)
    			{
   				%>
    			<tr>
      				<td></td>
      				<td>
                		<%out.println("<div align='justify'><label><font face = 'Comic Sans MS' color='red' size='2'>"+msg+"</font></label></div>");%>
                	</td>
    			</tr>
    			<% 
   				} session.removeAttribute("errMsg");%>
    			<tr>
    				<td>
    				</td>
      				<td>
                    	<div align="left"><input type="submit" name="Submit" value="Sign_In" id="forsubmit">
        				</div>
                 	</td>
    			</tr>
    			<tr>
      				<td colspan="2">
                    	<div align="center">
                        <font color='red'>New User>>>>></font><a href="registration.html">Registration</a>
        				</div>
                 	</td>
    			</tr>
			</table>
		</td>
	</tr>
</table>
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