<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminSuccess Page</title>
<link rel="stylesheet" type="text/css" href="start_examPage.css"/>
</head>
<body>
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#3AB883" size="+4">ONLINE EXAMINATION SYSTEM</font></label>
</div>
<div align="center" id="RESULT">
<font face="Comic Sans MS, cursive" color="#C16100" size="+3">ADMIN PAGE</font>
</div>
<div align="center" id="table1">
	<div align="center">
	<table width="100%" cellpadding="1" cellspacing="2">
		<tr>
			<td align="left">
				<font face="frankruehl" size="+1">
				MEMBER&nbsp;NAME&nbsp;:&nbsp;&nbsp;<%=session.getAttribute("adminU_id")%>
				</font>
			</td>
			<td align="right">
				<a href="adminlogin.jsp"><font face="frankruehl" color="blue">
                SignOut</font></a>
			</td>
		</tr>
	</table>
	</div>
    <br/>
    <br/>
    <div>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="adminInsertQues.jsp"><font face="Times New Roman, Times, serif" color="#790079" size="+1">
        Insert Question into Database</font></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="adminSeeQues.jsp"><font face="Times New Roman, Times, serif" color="#790079" size="+1">
        See Question Database</font></a>
        <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="adminlogin.jsp"><font face="Times New Roman, Times, serif" color="#790079" size="+1">
        SignOut</font></a>-->
	</div>
<br/>
<br/>
</div>
<br/>
<br/>
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