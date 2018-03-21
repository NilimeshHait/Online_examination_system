
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
 if(resultset.next())
{
System.out.print("hi");
String username=resultset.getString(2);
String email=resultset.getString(6);
%>
<jsp:forward page="userhome.jsp"></jsp:forward>
<%
}
else{
System.out.print("hi");
request.setAttribute("Error","Sorry! Username or Password Error. Try Again");
%>
<jsp:forward page="home.jsp"></jsp:forward>
<%
}
con.close();
}
catch(SQLException se){ }	
%>

</body>
</html