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
<td width="800" bgcolor="#ccccff">

<font align="right"><%

					
	
					out.print("<form action='logout.jsp'>");
					
					out.print("<input type='submit' align='left' value='Logout' id='login-submit'/>");
					out.print("</form>");
					
					
					 %>
</font>
<center><b><font color="" size="6">WELCOME ADMIN</font></b></center>

<br>
<br>
<center>
<b>
<br><a href="register.jsp"><font color="#0033ff" size="4">ADD STUDENTS</font></a><br>
<br>
<a href="addq.jsp"><font color="#0033ff" size="4">ADD QUESTIONS</font></a><br>
<br>
<a href="insss.jsp"><font color="#0033ff" size="4">SET INSTRUCTION</font></a><br>
<br>
<a href="cutoff.jsp"><font color="#0033ff" size="4">SELECT CUTOFF</font></a><br>
<br>
<a href="delete.jsp"><font color="#0033ff" size="4">DELETE RECORD</font></a>
</font></b></center><br>
</td>
</tr>
</table>
<br>

</body>
</html>