<html>
<head>
<title>OnlineExam</title>
</head>
<body>
<table align="center" cellspacing="0" cellpadding="0" style="border:4px solid #0033ff;height:20px">

<tr bgcolor="#0033ff"height="120">
<td width="100" align="center"><img src="mainlogo.png" width="70" height="70"></td>

<td width="800" >
<font size="7" face="Elephant" color="white"> <b><center>Online Examination System</center></b></font>
</td>
<td width="100" ><img src="mainlogo.png" width="70" height="70"></td>
</tr>
</table>
<table align="center" cellspacing="0" cellpadding="0" style="border:4px solid #990000;height:20px">
<tr bgcolor="#990000">
<td width="200" height="50" align="center"><B><a href="home.jsp"><font color="white">HOME</font></a></b></td>
<td width="200" align="center"><a href="admin.html"><font color="white"><b>ADMIN</b> </font></a></TD>
<td width="200" align="center"><a href="readins.jsp"><font color="white"><b>EXAM</b></font></a></td>
<td width="200" align="center"><a href="register.jsp"><font color="white"><b>REGISTER</b></font></a></td>
<td width="200" align="center"><a href="about.html"><b><font color="white">ABOUT</font></b></a></TD>
<tr>
</table>
<br>


<table align="center" cellspacing="0" cellpadding="0" style="border:4px solid #990000;height:20px">
<tr  height="350">
<td width="960">

<font align="right"><%

					
	
					out.print("<form action='logout.jsp'>");
					
					out.print("<input type='submit' align='left' value='Logout' id='login-submit'/>");
					out.print("</form>");
					
					
					 %>
</font>
<center><b><font color="#990000" size="6">WELCOME ADMIN</font></b></center>

<br>
<br>
<center>
<a href="adduser1.html"><b><font color="#0033ff" size="4">ADD USER</font></a><BR>
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
<table align="center" cellspacing="0" cellpadding="0" style="border:4px solid #0033ff;height:20px">
<tr bgcolor="#0033ff"height="50">
<td width="1000" ><font color="white"><center><p>&copy;2016:hait</p></center></font>
</td>
</tr>
</table>
</body>
</html>