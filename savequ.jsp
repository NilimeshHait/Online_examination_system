<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%! static int counter=0; %>
<%
counter++;
 try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
String question= request.getParameter("question");
String option1= request.getParameter("option1");
String option2= request.getParameter("option2");
String option3= request.getParameter("option3");
String option4= request.getParameter("option4");
String answer=request.getParameter("answer");
PreparedStatement ps=con.prepareStatement("insert into addquestion values(?,?,?,?,?,?,?)");

ps.setString(1,question);
ps.setString(2,option1);
ps.setString(3,option2);
ps.setString(4,option3);
ps.setString(5,option4);
ps.setString(6,answer);
ps.setInt(7,counter);
int s= ps.executeUpdate();
System.out.print(s);
		if(s>0)
		{
			request.setAttribute("save","Successfully Saved ,Enter Next Question ");
	
				
			%>
<% 
request.setAttribute("counter",counter);
%>
				<jsp:forward page="addq.jsp"></jsp:forward>
			<%
		}
		else
		{
			request.setAttribute("notSave","Sorry! some errors occur,Please Insert Again");
			%>
	
				<jsp:forward page="addq.jsp"></jsp:forward>
			<%
		}
	
	
	con.close();
}catch(SQLException e2)
{
e2.printStackTrace();
request.setAttribute("notSave","Sorry! some errors occur,Please Insert Again");
  %>

<jsp:forward page="addq.jsp"></jsp:forward>
<%

}
%>
