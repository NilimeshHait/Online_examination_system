<html>
<head> 
<title>OnlineExam</title>
</head>
<body bgcolor="#cccccc">

<br>
<br>
<br>
<br>
<br>
<br>
<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #0033ff;height:20px">
<tr  height="350">
<td width="800"  bgcolor="#ccccff">
<font align="right"><%

					
	
					out.print("<form action='logout.jsp'>");
					
					out.print("<input type='submit' align='left' value='Logout' id='login-submit'/>");
					out.print("</form>");
					
					
					 %>
</font>
<font color="#0033ff" size="5"><b><center>ADD INSTRUCTION</center></b></font>
<center>
<% 
					if(request.getAttribute("innotsave")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("innotsave"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("insave")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("insave"));
					out.print("</font>");
					}
					
					
					%>
</center>
<form method="post" action="saveins.jsp" >
					<table align="center" cellspacing="0" cellpadding="0">
<center>
					Instruction 1:<textarea rows="2" cols="50" name="i1" ></textarea><br>

Instruction 2:<textarea rows="2" cols="50" name="i2" ></textarea><br>
Instruction 3:<textarea rows="2" cols="50" name="i3" ></textarea>
<br>
Instruction 4:<textarea rows="2" cols="50" name="i4" ></textarea>
<br>
Instruction 5:<textarea rows="2" cols="50" name="i5" ></textarea>
<br>
Time:<input type="text" name="time">
<br>
<br>
<input type="submit" value="SET INSTRUCTION">
                    </table>
                     </form>
</center>
<center><a href="adminhome.jsp">Back</a></center>
</td>
</tr>
</table>
<br>

</body>
</html>