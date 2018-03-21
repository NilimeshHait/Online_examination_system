<%@ page language="java" import="java.sql.* ,java.io.*" %>
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
<center><font size="5"><u><b>SucessFull Student's List</b></u></font></center><br>
<table align="center" cellspacing="0" cellpadding="0">
<tr>
<th width="200">UserId</th>
<th width="200">Marks</th>
<th width="200">Name</th>
</tr>
</table>
<br>
<center>
<table align="center" cellspacing="0" cellpadding="0">

		<% 
		String uc=request.getParameter("uc");
		String lc=request.getParameter("lc");
		
		try{
		Class.forName("oracle.jdbc.OracleDriver");
		
		}
		catch(ClassNotFoundException ce){ }
		try{
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
		PreparedStatement ps=con.prepareStatement("select * from result");
		
		ResultSet rs = ps.executeQuery();

		while(rs.next())
                {String uid=rs.getString(1);
                 String sc=rs.getString(4);
		String name=rs.getString(2);
		String lname=rs.getString(3);
 		 if(Integer.parseInt(sc)>=Integer.parseInt(lc) && Integer.parseInt(sc)<=Integer.parseInt(uc))
		 {
			
			
	
                 %>

<tr>
<td width="150">
<%=uid%>
</td>
<td width="150" align="center">
<%=sc%>
</td>
<td width="150" align="right">
<%=name%> <%=lname%> 
</td>
</tr>
		
		<%}
		}
					
					
		con.close();
		}
		catch(SQLException se){ out.write("error1");}
		%>

</table>
<br>
<br>
<br>
<input type="button" OnClick="window.print()" value="Print"/>
<br>
<br>
<a href="adminhome.jsp"> <font size="5">Back</font></a>
</center>
	</body>
</html>


