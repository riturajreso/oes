<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminInsert Question Page</title>
<link rel="stylesheet" type="text/css" href="start_examPage.css"/>
</head>
<body>
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#3AB883" size="+4">ONLINE EXAMINATION SYSTEM</font></label>
</div>
<div align="center" id="RESULT">
<font face="Comic Sans MS, cursive" color="#C16100" size="+2">
ADMIN&nbsp;&nbsp;INSERT&nbsp;&nbsp;QUESTION&nbsp;&nbsp;INTO&nbsp;&nbsp;DATABASE</font>
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
		<tr>
			<td colspan="2">
            	<br/>
			</td>
		</tr>
        <tr>
			<td colspan="2" align="right">
				<a href="adminPage.jsp"><font face="frankruehl" color="blue">
                Go to Previous Page</font></a>
			</td>
		</tr>
	</table>
	</div>
    <br/>
	<!--container start-->
	<div align="center" id="ADMINinsert">
    <font face="Comic Sans MS, cursive" color="#0000CC" size="4">
    <strong>QUESTION INSERT DATABASE</strong></font>
    <br/>
    <font face="Calibri" color="red" size="3">
    <strong>( Fill all the Box.... )</strong></font>
    <br/>
    <br/>
    <form name="form" method="post" action="adminInsertQuesCheck.jsp">
	<table>
		<tr>
			<td>
				<input type="text" name="Qno" placeholder="Question Number"/>
			</td>
		</tr>
		<tr>
			<td>
                <textarea name="Question" cols="50" rows="7" placeholder="Write Questionr"></textarea>
			</td>
		</tr>
        <tr>
			<td>
				<input type="text" name="op1" placeholder="Option 1"/>
			</td>
        </tr>
        <tr>
			<td>
				<input type="text" name="op2" placeholder="Option 2"/>
			</td>
		</tr>
        <tr>
			<td>
				<input type="text" name="op3" placeholder="Option 3"/>
			</td>
		</tr>
        <tr>
			<td>
				<input type="text" name="op4" placeholder="Option 4"/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="ans" placeholder="Answer"/>
			</td>
		</tr>
        <tr>
			<td align="center">
				<input type="reset" value="RESET" name="reset" id="forsubmit"/>
        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		<input type="submit" value="SUBMIT" name="submit" id="forsubmit"/>
			</td>
		</tr>
	</table>
    </form>
	</div>
	<!--container ends-->
    <br/>
    <br/>
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