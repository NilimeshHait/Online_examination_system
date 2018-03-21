<%@ page language="java" import="java.sql.* ,java.io.*" %>
<html>
<head>
<title>OnlineExam</title>
</head>
<body bgcolor="#cccccc">


<br>


<%
String nn6=request.getParameter("naa5");
String lnn6=request.getParameter("lnaa5");
String uid6=request.getParameter("uid5");
%>
<br>

<table align="center" cellspacing="0" cellpadding="0" style="height:20px">
<tr>
<td width="800">
<font color="#0033ff" size="5"><b><%=nn6%> <%=lnn6%></b></font>
</td>
</tr>
</table>

<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #0033ff;height:20px">
<tr>
<td width="800" bgcolor="#ccccff">
<br>

<center>
<font size="5">
		<%! int i ; %>
		<% 
		
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
		int c=0;
		for(i=1;i<=10;i++){
			String option=request.getParameter("op" +String.valueOf(i));
			
			if(option!=null){
				int q=i;
				PreparedStatement ps=con.prepareStatement("select * from addquestion where qid='"+q+"'");
				
				
				ResultSet rs = ps.executeQuery();
				rs.next();
					
				String answer=rs.getString(6);




			if(option.equals(answer)==true){
		
				c++;
				
				}

			}
		}
							
		int x;
                     x=(int)c;
 			out.write("Right answer:" +String.valueOf(x));
out.print("<br>");
out.print("<br>");
                       int w;
                        w=10-x;
                        out.write("Wrong answer:" +String.valueOf(w));
out.print("<br>");
out.print("<br>");
			double d,s;
                        d=0.2 * w;
                        s=x-d;
                        out.write("You Get:" +String.valueOf(x));
                        int a;
                        a=(int)s;
		PreparedStatement ps1=con.prepareStatement("insert into result values(?,?,?,?)");
		ps1.setString(1,uid6);
		ps1.setString(2,nn6);
		ps1.setString(3,lnn6);
		ps1.setInt(4,x);
		int r=ps1.executeUpdate();
			
		con.close();
		}
		catch(SQLException se)
		{ 
			out.print("<br>");
			out.print("<br>");
		out.print("<font color='red'>");
		out.print("<blink>");
		 out.println("    You Have Already Given The Exam");
		out.print("</blink>");
		out.print("</font>");	
		}
	

		%>

</font>
</center>

<br>
<br>
                    <center><img src="Picture1.png" height="120" width="170"><br><br>
                <a href="logout.jsp"><font size=5">Logout</font></a></center><br><br><br>	
<br>
<br>
</td>
</tr>
</table>
</body>
</html>