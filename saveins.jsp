<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%! static int counter=1; %>
<%try
{

String ii1=request.getParameter("i1");
	String ii2=request.getParameter("i2");
	String ii3=request.getParameter("i3");

	String ii4=request.getParameter("i4");
	String ii5=request.getParameter("i5");
	String tim=request.getParameter("time");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
PreparedStatement ps1=con.prepareStatement("insert into instruction values(?,?,?,?,?,?,?)");	
		ps1.setString(1,ii1);
		ps1.setString(2,ii2);
		ps1.setString(3,ii3);
		ps1.setString(4,ii4);
		ps1.setString(5,ii5);
		ps1.setString(6,tim);
		ps1.setInt(7,counter);
		int s=ps1.executeUpdate();
		System.out.print(s);
		if(s>0)
		{
			request.setAttribute("insave","Successfully upload ");
	
				
			%>
				<jsp:forward page="insss.jsp"></jsp:forward>
			<%
		}
		else
		{
			request.setAttribute("innotsave","Sorry! some errors occur,Please follow constraints");
			%>
	
				<jsp:forward page="insss.jsp"></jsp:forward>
			<%
		}
	
	
	con.close();
}catch(SQLException e2)
{
e2.printStackTrace();
request.setAttribute("innotsave","Sorry! some errors occur,Please follow constraints");
  %>

<jsp:forward page="insss.jsp"></jsp:forward>
<%

}
%>