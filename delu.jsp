<%@ page language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<title>OnlineExam</title>
</head>
<body>

<br>
<br>



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
	PreparedStatement ps2=con.prepareStatement("delete regexam");
	int s1= ps2.executeUpdate();
		if(s1==1){
				request.setAttribute("succdel","Succfully Deleted all user");
				
				%>
				<jsp:forward page="delete.jsp"></jsp:forward>
				<%
				}
				else{
				request.setAttribute("notsuccdel","Alrady Deleted all user");
				
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



