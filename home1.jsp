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

<table align="center" cellspacing="0" cellpadding="0" style="border:30px groove #0033ff;border-radius:20px;height:20px">
<tr  height="350">
<td width="800" bgcolor="#ccccff">
<p align="right">||<a href="admin.jsp">Admin</a>||</p>
<form id="1" action="loginprocess1.jsp">
<table align="center" cellspacing="0" cellpadding="0" >
<center>
<font size="7" face="Estrangelo Edessa">Log in</font>
<br>
<br>
<br>
<b>
<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red'>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red'>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					
					
					%>

<%if(request.getAttribute("reg")!=null){
out.print("<font style='color:red'>"+request.getAttribute("reg")+"</font>");
} %>
</b>
</center>
<br>
<br>
<tr height="30">
<td colspan="2" bgcolor="#0033ff" style="border-radius:6px;"><font color="ffffff" face="Segoe UI Semibold"><b>Alrady Registered login</b></font></td>
<td></td>
</tr>
<tr height="50">
<td width="90"></td>
<td><b>USER ID:</b></td>
<td><input type="text" name="uid"></td>
</tr>
<tr>
<td></td>
<td><b>PASSWORD:</b></td>
<td><input type="password" name="password"></td>
</tr>
<tr  height="50">
<td></td>
<td>
</td>
<td><center><input type="submit" name="login" value="LogIn">&nbsp; &nbsp;<input type="reset" name="reset" value="Reset">
</center></td>
</tr>
<td></td>
<td></td>
</tr>
</table>
</form>
</td>
</tr>
</table>
</td>
</tr>
</table>
<center>&copy;2016:hait</center>
<br>

</body>
</html>