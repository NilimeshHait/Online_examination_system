<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>OnlineExam</title>
</head>
<body bgcolor="#cccccc">
<br>
<br>

<table align="center" cellspacing="0" cellpadding="0" >

<tr><td width="847"><img src="home_banner.jpg" width="847"></td></tr>
</tr>
</table>
<table align="center" cellspacing="0" cellpadding="0" style="border:0px groove #0033ff;border-radius:20px;height:20px">

<tr  height="340" background="Online-exam.png">
<td width="847"  valign="top">
||<a href="admin.jsp">Admin</a>||
<form id="1" action="loginprocess1.jsp">
<table align="right" cellspacing="0" cellpadding="0">

<tr height="">

<td valign="top" width="310" height="180" bgcolor="#ccccff" style="border-radius:6px;"><center><b><font size="5" color="#666666">Log In</font></b></center>
</br>
<center>
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
<font color="#666666">
&nbsp;&nbsp;&nbsp;<b>USER ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid">
<br>
<br>

&nbsp;&nbsp;&nbsp;PASSWORD: <input type="password" name="password">
</b>
</center>
</font>
<br>
<br>
<center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="login" value="LogIn">&nbsp; &nbsp;<input type="reset" name="reset" value="Reset">
</center></td>

<td width="50"></td>
</tr>
<tr height="70">
<td></td>
</td></td>
</tr>
</table>
</form>
</td>
</tr>
</table>
</td>
</tr>
</table>

<table align="center" cellspacing="0" cellpadding="0" >
<tr height="70">
<td width="847" background="footer1.jpg">
<br>
<center><font color="white">&copy;2016:hait</font></center>
</td>
</tr>
</table>


</body>
</html>