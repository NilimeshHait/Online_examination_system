<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try
{

String id=request.getParameter("id");
String fname1=request.getParameter("fname1");
String lname1=request.getParameter("lname1");
String pass=request.getParameter("pass");
String dob1=request.getParameter("dob1");
String email1=request.getParameter("email1");
String ph=request.getParameter("ph");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
PreparedStatement ps1=con.prepareStatement("insert into regexam values(?,?,?,?,?,?,?)");	
		ps1.setString(1,id);
		ps1.setString(2,fname1);
		ps1.setString(3,lname1);
		ps1.setString(4,pass);
		ps1.setString(5,dob1);
		ps1.setString(6,email1);
		ps1.setString(7,ph);
		int s=ps1.executeUpdate();
		System.out.print(s);
		if(s>0)
		{
			request.setAttribute("reg","Successfully Registered,Please Login ");
	
				
			%>
				<jsp:forward page="home.jsp"></jsp:forward>
			<%
		}
		else
		{
			request.setAttribute("regerr","Sorry! some errors occur,Please follow constraints");
			%>
	
				<jsp:forward page="register.jsp"></jsp:forward>
			<%
		}
	
	
	con.close();
}catch(SQLException e2)
{
e2.printStackTrace();
request.setAttribute("regerr","Alrady Registered with this Mail Id,Try Again");
  %>

<jsp:forward page="register.jsp"></jsp:forward>
<%

}
%>