<%@ page language="java" import="java.sql.*,java.io.*"%>
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

<%
	String uid=request.getParameter("uid");


		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
            	Statement statement = con.createStatement();
	ResultSet rs =  statement.executeQuery("select * from regexam where id= '" + uid + "'") ;
            if(rs.next()) 
                 
{%>




<br>


<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #0033ff;height:20px">
<tr  height="350">
<td width="800" bgcolor="#ccccff">
<b><font color="#0033ff" size="5">

<br>
<FONT ALIGN="RIGHT">
	<%
					out.print("<form action='logout.jsp'>");
				
					out.print("<input type='submit' align='left' value='Logout' id='login-submit'/>");
					
					out.print("</form>");
					
					%>
</FONT>
<center>
Hi,
<%
String naa=rs.getString(2);
String lnaa=rs.getString(3);
%>
<%out.println(naa);%>
<%out.println(lnaa);
%>
</center>
<br>
<br>
<br>
<br>
<br>

<center><font color="0033ff" Size="5">Click bellow to Give an Exam</font>
<br>
<br>
<form action="readins.jsp">
<input type="submit" value="Test" name="exam">
</center>
<input type="hidden" name="uid1" value="<%=uid%>"/>
<input type="hidden" name="naa1" value="<%=naa%>"/>
<input type="hidden" name="lnaa1" value="<%=lnaa%>"/>
</form>
</td>
</tr>
</table>
<%}
%>
<br>

</body>
</html>