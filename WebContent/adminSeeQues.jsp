<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminSee Question</title>
<link rel="stylesheet" type="text/css" href="start_examPage.css"/>
</head>
<body>
<%
Connection conn = null;
ResultSet rs=null;
Statement s = null;

String sql=null;

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
 	conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/postgres","postgres","postgres");
}
catch(Exception e)
{%>
   <h1>connection error</h1>
<%
}
%>
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#3AB883" size="+4">ONLINE EXAMINATION SYSTEM</font></label>
</div>
<div align="center" id="RESULT">
<font face="Comic Sans MS, cursive" color="#C16100" size="+2">
ADMIN&nbsp;&nbsp;SEE&nbsp;&nbsp;QUESTION&nbsp;&nbsp;DATABASE</font>
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
    <br/>
    <div>
    	<table width="100%" cellpadding="1" cellspacing="2" border="1" style="border-radius:5px">
		<th bgcolor="#009966">Q No.</th>
    	<th bgcolor="#009966" width="50%">Question</th>
    	<th bgcolor="#009966" width="10%">Op1</th>
    	<th bgcolor="#009966" width="10%">Op2</th>
        <th bgcolor="#009966" width="10%">Op3</th>
        <th bgcolor="#009966" width="10%">Op4</th>
        <th bgcolor="#009966">Ans</th>
        <%
        try
		{
	   		s = conn.createStatement();  
	   		sql="SELECT question, op1, op2, op3, op4, answer, qno FROM exam order by qno";
	   		rs = s.executeQuery(sql);
	   		while(rs.next())
	   		{%>
	   		<tr>
	   			<td align="center">
	   				<%=rs.getString("qno")%>
	    		</td>
	    		<td align="justify">
	    			<%=rs.getString("question")%>
	    		</td>
	    		<td align="center">
	    			<%=rs.getString("op1")%>	
	    		</td>
	    		<td align="center">
	    			<%=rs.getString("op2")%>	
	    		</td>
	            <td align="center">
	    			<%=rs.getString("op3")%>	
	    		</td>
	    		<td align="center">
	    			<%=rs.getString("op4")%>
	    		</td>
	            <td align="center">
	    			<%=rs.getString("answer")%>
	    		</td>
	    	</tr>
	   		<%
	   		//System.out.println();
	   		}
	 	}
		catch(Exception e)
		{%>
			<h1>connection error123</h1>
		<%}%>
	</table>
	</div>
    <br/>
    <br/>
</div>
</body>
</html>
