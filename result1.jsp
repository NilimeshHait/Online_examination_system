<%@ page language="java" import="java.sql.* ,java.io.*" %>
<html>
<head>
<title>OnlineExam</title>
</head>
<body>

<©hait>
<br>
<br>
<br>
<%
String nn6=request.getParameter("naa5");
String uid6=request.getParameter("uid5");
%>
<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #a3a3a3;border-radius:8px;height:20px">
<tr bgcolor="#125698">
<td width="340" height="50"><B><font color="white"><%=nn6%></font></b></td>
<td width="340"><b></b> </TD>
<td width="340"><b></b></td>
<td width="340" align="center"><b></b></TD>
<tr>
</table>
<br>
<br>
<center>
<font size="5">
		<%! int i ; %>
		<% 
		
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
		
		int c=0;
		for(i=1;i<=6;i++){
			String option=request.getParameter("op" +String.valueOf(i));
			
			if(option!=null){
		
				PreparedStatement ps=con.prepareStatement("select answer from addquestion where qid=1");
				out.print("connect...");
				ps.setInt(7,i);
				
				ResultSet rs = ps.executeQuery();
				
				rs.next();
					
				String answer=rs.getString(6);
out.print(answer);
			if(option.equals(answer)==true){
		
				c++;
				
				}

			}
		}
							
		double x;
                     x=(double)c;
 			out.write("Right answer:" +String.valueOf(x));
                       double w;
                        w=6-x;
                        out.write("Wrong answer:" +String.valueOf(w));
			double d,s;
                        d=1 * w;
                        s=x-d;
                        out.write("You Get:" +String.valueOf(s));
                        int a;
                        a=(int)s;
		PreparedStatement ps1=con.prepareStatement("insert into result values(?,?,?)");
		ps1.setString(1,uid6);
		ps1.setString(2,nn6);
		ps1.setInt(3,a);
		int r=ps1.executeUpdate();
			
		
		}
		catch(SQLException se)
		{ 
		 out.println("    You Have Already Given The Exam");
			
		}
	

		%>

<font>
</center>
<br>
<br>
                    <center><font size="18" color="green"><p>THANK YOU</p></font><br>
                <a href="logout.jsp">Logout</a></center><br><br><br>	
</body>
</html>