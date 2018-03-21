<%@ page language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<script> 
function autoClick()
{
document.getElementById('linkToClick').click();
 
} 
<!-- 
<% 
String clock = request.getParameter( "clock" ); 
if( clock == null ) clock = "300"; 
%> 
var timeout = <%=clock%>; 
function timer() 
{ 
if( --timeout > 0 ) 
{ 
document.forma.clock.value = timeout; 
window.setTimeout( "timer()", 1000 ); 
} 
else 
{ 
document.forma.clock.value = "Time over"; 
 
} 
} 
</script>

<title>OnlineExam</title>
</head>
<body onload="setTimeout('autoClick();',300000);" bgcolor="#cccccc">
<br>



<%		int t;
		int i=1;
		String UID1=request.getParameter("uid1");
		String naa2=request.getParameter("naa1");
		try{
Class.forName("oracle.jdbc.OracleDriver");
}

	catch(ClassNotFoundException ce){ }
try{
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
            	Statement statement = con.createStatement();
	ResultSet rs =  statement.executeQuery("select * from addquestion order by qid");
	%>
 


	<form action="score.jsp" name="forma">
<table align="center" cellspacing="0" cellpadding="0">
<tr>
<td width="480">
<font color="#0033ff" size="5">
<b>
<%=naa2%>
</b>
</font>
</td>
<td width="480" align="right">
<font color="#0033ff" size="5">
<b>Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="font-size:20px"> 
</b>
</font>
</td>
</tr>
</table>
<br>

<table align="center" cellspacing="0" cellpadding="0" style="border:4px solid #990000;height:20px">
<tr>
<td width="960">
	<% while(rs.next()){ %>
		 <font size="5"><%= rs.getInt(7)%>&nbsp;
		 <%=rs.getString(2)%><br>
</font>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="1">

		<%=rs.getString(1)%><br>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="2">

		<%=rs.getString(2)%><br>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="3">

		<%=rs.getString(3)%><br>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="4">
		<%=rs.getString(4)%><br>
		<%
			i++;
		}
		con.close();
	}
	catch(SQLException se){ }
		%>

<br>
<br>
<input type="submit" value="Finish" id="linkToClick" target="_blank">
<br>
<br>
<br>
</form>

</td>
</tr>
</table>
<script> 
<!-- 
timer(); 
//--> 
</script> 
</body>

</html>



