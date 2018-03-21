<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

<table align="center" cellspacing="0" cellpadding="0" style="border:20px groove #0033ff;border-radius:20px;height:20px">

<tr  height="350"  bgcolor="#ccccff">
<td width="800">
<center><b><font color="#0033ff" size="5">ADMIN</font></b></center>
<br>
<table align="center" cellspacing="0" cellpadding="0" >
<form action="adminlogprocess.jsp">
<tr>
<center><b>
<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					
					
					%>
</b></center>
<td width="100" align="center"><b>USER ID:</b></td>
<td width="200"><input type="text" name="uid"></td>
</tr>
<tr>
<td width="100" align="center"><b>PASSWORD:</b></td>
<td width="200" height="50"><input type="password" name="password"></td>
</tr>
<tr>

<td width="100" align="right"></td>
<td width="200"  align="left"><input type="submit" name="submit" value="login">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="reset"></td>

</tr>
</table>
</form>
</td>
</tr>
</table>
<br>

</body>
</html>