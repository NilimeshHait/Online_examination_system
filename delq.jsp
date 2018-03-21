<%@ page language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<title>OnlineExam</title>
</head>
<body>
<©hait>
<br>
<br>
<br>

<table align="center" cellspacing="0" cellpadding="0" style="border:1px solid #a3a3a3;border-radius:8px;height:20px">
<tr bgcolor="#125698">
<td width="250" height="50" align="center"><B><a href="admin1.html"><font color="white">HOME</font></a></b></td>
<td width="250"><b></b> </TD>
<td width="250"><b></b></td>
<td width="250" align="center"><b><a href="logout.jsp"><font color="white">Logout</font></a></b></TD>
<tr>
</table>
<br>
<br>
<br>
<br>
<center>
<font size="4">
<%
		
		try{
	Class.forName("oracle.jdbc.OracleDriver");
	}
	catch(ClassNotFoundException ce){ }
	try{
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
	PreparedStatement ps2=con.prepareStatement("delete addquestion");
	int s1= ps2.executeUpdate();
		if(s1==1){
				request.setAttribute("ccdel","Succfully Deleted all question");
				
				%>
				<jsp:forward page="delete.jsp"></jsp:forward>
				<%
				}
				else{
				request.setAttribute("notsuccdel","Alrady Deleted all question");
				
				%>
				<jsp:forward page="delete.jsp"></jsp:forward>
				<%
				}
		
		con.close();
	}
	catch(SQLException se){ }
	%>
</font>

<br>
<br>
</center>
</form>
</body>

</html>



