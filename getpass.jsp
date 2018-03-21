<%@ page language="java" import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
<title>OnlineExam</title>
<body>
<br>
<br>
<br>
<center>

<%
	String uid4=request.getParameter("fpass");


		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
            	Statement statement = con.createStatement();
	ResultSet resultset =  statement.executeQuery("select * from regexam where id= '" + uid4 + "'") ;
            if(!resultset.next()) {
				request.setAttribute("nf","User not found");
				
				%>
				<jsp:forward page="forget.jsp"></jsp:forward>
				<%
				}
            else 
{

				request.setAttribute("f","Your password is:");
				request.setAttribute("f1","<%= resultset.getString(3); %>");
				%>
				<jsp:forward page="forget.jsp"></jsp:forward>
				<%

}

%>

<br>
<br>
<a href="home.html"><input type="button" value="Back"></a>
</center>

</body>
</html>