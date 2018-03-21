
<%@ page language="java" import="java.sql.*" %>
<html>
<title>verification page</title>
<body>
<%
String uid1=request.getParameter("uid");
String pass1=request.getParameter("password");
try{
		Class.forName("oracle.jdbc.OracleDriver");
		}

		catch(ClassNotFoundException ce){ }
try
{
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
            	Statement statement = con.createStatement();
	ResultSet resultset =  statement.executeQuery("select * from regexam where id = '" + uid1 + "' and password='"+pass1+"'") ;

if(uid1.equals("admin") && pass1.equals("admin"))
{%>
<jsp:forward page="admin1.jsp">
<jsp:param name="id1" value="<%=uid1 %>"/>
</jsp:forward>
<%}
else if(resultset.next())
{%>
<jsp:forward page="userhome.jsp">
<jsp:param name="id1" value="<%=uid1 %>"/>
</jsp:forward>
<%}
else{
out.println("USER NOT FOUND");
}
con.close();
}
catch(SQLException se){ }	
%>

</body>
</html