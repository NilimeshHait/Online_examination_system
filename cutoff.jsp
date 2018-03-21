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


<center><b><font color="#0033ff" size="6"> CutOff  Selection</font></b></center>

<br>
<br>
<center>
<center>
<form action="selected.jsp" method="get">		
<font size="4"><b>Upper Cutoff:</B></font> <select name="uc">
<% for(int i=1;i<=100;i++){%>

 		<option value="<%= i%>"><%= i%></option>
<%}%>
               </select><br><br><br>
<font size="4"><B>Lower Cutoff:</b></font>  <select name="lc">
<% for(int j=0;j<=100;j++){%>

 		<option value="<%= j%>"><%= j%></option>
<%}%>
               </select><br><br><br><br>
<input type="submit" value="Select">&nbsp
<input type="reset">
</form>
 </center>	
<center><a href="adminhome.jsp">Back</a></center>
</form>
</td>
</tr>
</table>
<br>

</body>
</html>