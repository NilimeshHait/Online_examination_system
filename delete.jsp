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

<% 
					if(request.getAttribute("succdel")!=null){
					out.print("<center>");
					out.print("<font size='4' color='red' m>");
					out.print(request.getAttribute("succdel"));
					out.print("</font>");
					out.print("</center>");
					}
					
					
					%>
<% 
					if(request.getAttribute("notsuccdel")!=null){
					out.print("<center>");
					out.print("<font size='4' color='red' m>");
					out.print(request.getAttribute("notsuccdel"));
					out.print("</font>");
					out.print("</center>");
					}
					
					
					%>
<% 
					if(request.getAttribute("ccdel")!=null){
					out.print("<center>");
					out.print("<font size='4' color='red' m>");
					out.print(request.getAttribute("ccdel"));
					out.print("</font>");
					out.print("</center>");
					}
					
					
					%>
<center><b><font color="#0033ff" size="6">DELETE  RECORDS</font></b></center>

<br>
<br>

<center>
<form action="delete1.jsp">
<b>
<center> <font color="red">Are You Sure ! You Want To Delete All Records ? If Yes Then Choose Option And Delete<br>
Else Click Back </font></center>
<P ALIGN="CENTER">
Delete Questions:<input type="radio" name="op" value="delq" required>
Delete Users:<input type="radio" name="op" value="delu">
Delete Score:<input type="radio" name="op" value="delsc">
Delete Instruction:<input type="radio" name="op" value="delin">
</P>
</b>
<P ALIGN="CENTER"><INPUT TYPE="submit" value="Delete"></P>
<center><a href="adminhome.jsp">Back</a></center>
</form>
</td>
</tr>
</table>
<br>

</body>
</html>