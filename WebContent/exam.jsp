<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Question Page</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body bgcolor="#F4EAFF">
<%
   String[] s1=new String[20]; 
   s1=(String[])session.getAttribute("question");
   String[] s2=new String[20]; 
   s2=(String[])session.getAttribute("op1");
   String[] s3=new String[20]; 
   s3=(String[])session.getAttribute("op2");
   String[] s4=new String[20]; 
   s4=(String[])session.getAttribute("op3");
   String[] s5=new String[20]; 
   s5=(String[])session.getAttribute("op4");
   int[] s6=new int[20]; 
   s6=(int[])session.getAttribute("answer");
   Integer c=(Integer)session.getAttribute("count");
   int count=c.intValue();
   int arr[]=new int[20];
   arr=((int[])session.getAttribute("arr"));
   int a=arr[count];
   int color[]=new int[20];
   color=((int[])session.getAttribute("color"));
   
   Integer hr=(Integer)session.getAttribute("hour");
   int hour=hr.intValue();
   
   Integer min=(Integer)session.getAttribute("minute");
   int minute=min.intValue();
   
   Integer sec=(Integer)session.getAttribute("second");
   int second=sec.intValue();
   
   
   
   
  //long time=(long)session.getAttribute("start_time");
   
    
 %>
<div align="center">
<br>
<br>
<form method="post" action="ContollerServlet/exam">
<table width="100%" cellpadding="1" cellspacing="2">
	<tr>
		<td class="f1">
		<div align="left">
        	<table width="100%" cellpadding="1" cellspacing="2">
            	<tr>
 					<td colspan="4" align="left">
 					
                    	<label>Q.<%=count+1%>) <%=s1[count]%></label>
                	</td>
                </tr>
                <tr>
 					<td colspan="4" align="left">
                    	<label><br></label>
                	</td>
                </tr>
                <%if(a==0){%>
                <tr>
               		<td align="left">
                		<input type="radio" name="radiobutton" value="1">&nbsp;<%=s2[count] %>
                	</td>
               	</tr>
           		<tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="2">&nbsp;<%=s3[count] %>
                    </td>
               	</tr>
                <tr>
                    <td align="left">
                   		<input type="radio" name="radiobutton" value="3">&nbsp;<%=s4[count] %>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="4">&nbsp;<%=s5[count] %>
                    </td>
                </tr>
                <%}
                if(a==1)
                { %>
                 <tr>
               		<td align="left">
                		<input type="radio" name="radiobutton" value="1" checked>&nbsp;<%=s2[count] %>
                	</td>
               	</tr>
           		<tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="2">&nbsp;<%=s3[count] %>
                    </td>
               	</tr>
                <tr>
                    <td align="left">
                   		<input type="radio" name="radiobutton" value="3">&nbsp;<%=s4[count] %>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="4">&nbsp;<%=s5[count] %>
                    </td>
                </tr>
                
                  <%}
                if(a==2)
                { %>
                 <tr>
               		<td align="left">
                		<input type="radio" name="radiobutton" value="1">&nbsp;<%=s2[count] %>
                	</td>
               	</tr>
           		<tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="2" checked>&nbsp;<%=s3[count] %>
                    </td>
               	</tr>
                <tr>
                    <td align="left">
                   		<input type="radio" name="radiobutton" value="3">&nbsp;<%=s4[count] %>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="4">&nbsp;<%=s5[count] %>
                    </td>
                </tr>
                  <%}
                if(a==3)
                { %>
                 <tr>
               		<td align="left">
                		<input type="radio" name="radiobutton" value="1">&nbsp;<%=s2[count] %>
                	</td>
               	</tr>
           		<tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="2">&nbsp;<%=s3[count] %>
                    </td>
               	</tr>
                <tr>
                    <td align="left">
                   		<input type="radio" name="radiobutton" value="3" checked>&nbsp;<%=s4[count] %>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="4">&nbsp;<%=s5[count] %>
                    </td>
                </tr>
                  <%}
                if(a==4)
                { %>
                 <tr>
               		<td align="left">
                		<input type="radio" name="radiobutton" value="1">&nbsp;<%=s2[count] %>
                	</td>
               	</tr>
           		<tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="2">&nbsp;<%=s3[count] %>
                    </td>
               	</tr>
                <tr>
                    <td align="left">
                   		<input type="radio" name="radiobutton" value="3">&nbsp;<%=s4[count] %>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                    	<input type="radio" name="radiobutton" value="4" checked>&nbsp;<%=s5[count] %>
                    </td>
                </tr>
                <%} %>
                <tr>
 					<td colspan="4" align="left">
                    	<label><br></label>
                	</td>
                </tr>
                <tr>
                    <td align="center">
                       	<input type="submit" name="Next" value="Previous_Question">
                   	</td>
                   	<td align="center">
                    	<input type="submit" name="Next" value="Next_Question">
                    </td>
                    <td align="center">
                    	<input type="submit" name="Next" value="Mark_as_Review">
                    </td>
                    <td align="center">
                       	<input type="submit" name="Next" id="submitButtonId" value="Show_Result">
                    </td>
          		</tr>
			</table>
		</div>
		</td>
        <td class="f2">
        <hr color="#000000" align="center" class="line"/>
        </td>
        <td class="f3">
        <div align="right">
        	<table width="100%" cellpadding="1" cellspacing="2">
            	<tr>
            		<td align="left" colspan="4">
        				<!-- Time Left:<label id="m"></label>
						Time Left current:<label id="m1"></label>
						<br>
						Time Left fixed:<label id="m2"></label> -->
						
						<font size="+1" color="#0000CC"><label id="m"></label></font>
						
						<script type="text/javascript">
				
						
						function addZero(i) {
					    if (i < 10) {
						i = "0" + i;
						    }
						    return i;
						}
						
						

						//var date=new Date();
					    var t="<%=hour%>";
						var t1="<%=minute%>";
						var t2="<%=second%>";
						
						
						xyz();

						function xyz()
						{
							
							
							var date=new Date();
							var st=date.getHours();
							var st1=date.getMinutes();
							var st2=date.getSeconds();
							var tt=t;
							var tt1=t1;
							var tt2=t2;
							var v=60;
							if(tt2>=st2)
							{
								tt2=Number(tt2)-Number(st2);
							}
							else
							{
								tt2=Number(tt2)+Number(v)-Number(st2);
								tt1=Number(tt1)-1;
							}

							if(tt1>=st1)
							{
								tt1=Number(tt1)-Number(st1);
							}
							else
							{
								
								tt1=Number(tt1)+Number(v)-Number(st1);
								tt=Number(tt)-1;
							}

							tt=Number(tt)-Number(st);
							
							if(tt==0 && tt1==0 && tt2==0)
								{
									
									
									document.getElementById('submitButtonId').click();
								
								}
							
						var a=document.getElementById('m');
						a.innerHTML="The Time left : "+tt+" : "+tt1+" : "+tt2;
						
						//var b=document.getElementById('m1');
						//b.innerHTML="The Now time is:"+st+":"+st1+":"+st2;
						
						//var c=document.getElementById('m2');
						//c.innerHTML=t+":"+t1+":"+t2;


						}

						var timer=setInterval(xyz,1);
						</script>
        			</td>
            	</tr>
                <tr>
                	<td>
                    	<label><br></label>
                    </td>
                </tr>
                
                <tr>
                	<td align="center">
                		<%for(int i=0;i<20;i++)
               			 {
                			if(i==5||i==10||i==15)
                			{
                			%>
                				<br>
                			<%}
                				if(color[i]==0)
            					{
            					%>
        							<input type="submit" value="Q<%=(i+1)%>" name="Next" class="b1" />&nbsp;&nbsp;
        							<!--<input type="submit" value="Q2" name="Next" />&nbsp;&nbsp;-->
        							<!--<input type="submit" value="Q3" name="Next" />&nbsp;&nbsp;-->
        							<!--<input type="submit" value="Q4" name="Next" />&nbsp;&nbsp;-->
								<%}
            	      			else if(color[i]==1)
            	    			{
            					%> 
            						<input type="submit" value="Q<%=(i+1)%>" name="Next" style="background-color:#090" class="b1"/>&nbsp;&nbsp;       			
        						<%}
            	      			else if(color[i]==2)
            	    			{
            					%> 
            						<input type="submit" value="Q<%=(i+1)%>" name="Next" style="background-color:#09F" class="b1"/>&nbsp;&nbsp;       			
        						<%}
            	      			else if(color[i]==3)
            	    			{
            					%> 
            						<input type="submit" value="Q<%=(i+1)%>" name="Next" style="background-color:#F0F" class="b1"/>&nbsp;&nbsp;       			
        						<%}
            	      			else if(color[i]==4)
            	    			{
            					%> 
            						<input type="submit" value="Q<%=(i+1)%>" name="Next" style="background-color:#F00" class="b1"/>&nbsp;&nbsp;       			
        						<%}
            			}%>
        			</td>
            	</tr>   
                <tr>
            		<td>
						<label><br></label>
	       			</td>
            	</tr>
                <tr>
            		<td>
        				<img src="Picture/red1.jpg">&nbsp;<label>Not_Answer and Skip</label>
        			</td>
            	</tr>
                <tr>
            		<td>
        				<label><br></label>
        			</td>
            	</tr>
                <tr>
            		<td>
        				<img src="Picture/green1.jpg">&nbsp;<label>Answer</label>
        			</td>
            	</tr>
                <tr>
            		<td>
        				<label><br></label>
        			</td>
            	</tr>
                <tr>
            		<td>
        				<img src="Picture/blue1.jpg">&nbsp;<label>Answer and Mark_as_Review</label>
        			</td>
            	</tr>
                <tr>
            		<td>
        				<label><br></label>
        			</td>
            	</tr>
                <tr>
            		<td>
        				<img src="Picture/pink1.jpg">&nbsp;<label>Not_Answer and Mark_as_Review</label>
        			</td>
            	</tr>
            </table>
        </div>
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
<div align="center">
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