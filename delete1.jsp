<%@ page language="java" import="java.sql.*" %>
<html>
<title>query execution page</title>
<body>
<%
//String uid1=request.getParameter("id");
String op1=request.getParameter("op");
if(op1.equals("delq"))
{%>
<jsp:forward page="delq.jsp">
<jsp:param name="op1" value="1"/>
</jsp:forward>
<%}
else if(op1.equals("delu"))
{%>
<jsp:forward page="delu.jsp">
<jsp:param name="op1" value="1"/>
</jsp:forward>
<%}
else if(op1.equals("delsc"))
{%>
<jsp:forward page="delsc.jsp">
<jsp:param name="op1" value="1"/>
</jsp:forward>
<%}
else if(op1.equals("delin"))
{%>
<jsp:forward page="delin.jsp">
<jsp:param name="op1" value="1"/>
</jsp:forward>
<%}
else
{	
	
	out.println("choose any one radio button");
}
%>
</body>
</html>