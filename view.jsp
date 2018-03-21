<%@ page language="java"  import="java.util.Date,java.io.*,javax.servlet.*"%>
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
<center><b><font color="#0033ff" size="5">Check befour submit</font></b>
<br>
<font color="red">Please collect your USER ID</font> </center>
<%
	String fname1=request.getParameter("fname");
	String lname1=request.getParameter("lname");
	String pass=request.getParameter("pwd");
	String dob1=request.getParameter("dob");
	String email1=request.getParameter("email");
	String ph=request.getParameter("phone");
	
	Date dt=new Date();
	int ye=dt.getYear();
	int day=dt.getDate();
	int month=dt.getMonth();
	int hour=dt.getHours();
	int min=dt.getMinutes();
	int sec=dt.getSeconds();
	int year=(ye-100);
	int mon=(month+1);
	String na=fname1.substring(0,1);
	String la=lname1.substring(0,1);
	String na1=na.toUpperCase();
	String la1=la.toUpperCase();
	String dat=(day+"/"+mon+"/"+"20"+year);
	String id=(na1+year+day+hour+min+sec+la1); 

	
%>
<br>
<table align="center" cellspacing="0" cellpadding="0" >

<tr>

<td width="100" align="right"><b>User ID:</b></td>
<td width="100" align="center"><%=id%></td>
<td width="100" align="center"><b>Name:</b></td>
<td width="100"><%=fname1%> <%=lname1%></td
</tr>
<tr>
<td width="100" align="right"><b>Date Of Birth:</b></td>
<td width="100" height="50" align="center"><%=dob1%></td>
<td width="100"  align="center"><b>E-mail:</b></td>
<td width="100"><%=email1%></td>
</tr>
<tr>
<td width="100" align="right"><b>Phone Number:</b></td>
<td width="100" align="center"><%=ph%></td>
<td width="100"  align="right"></td>
<td width="100"></td>
</tr>
<tr>
<td width="100" align="right"></td>
<td width="100" height="50"></td>
<td width="100"  align="right"></td>
<td width="100"></td>
</tr>
<form action="register1.jsp">
<input type="hidden" name="id" value="<%=id%>">
<input type="hidden" name="fname1" value="<%=fname1%>">
<input type="hidden" name="lname1" value="<%=lname1%>">
<input type="hidden" name="pass" value="<%=pass%>">
<input type="hidden" name="dob1" value="<%=dob1%>">
<input type="hidden" name="email1" value="<%=email1%>">
<input type="hidden" name="ph" value="<%=ph%>">

<tr>
<td width="200" align="right"></td>
<td width="200" align="right"><input type="submit" name="submit" value="Register"></td>
<td width="200"  align="left">&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td width="200"></td>
</tr>

</form>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<br>


</body>
</html>