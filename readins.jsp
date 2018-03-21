<%@ page language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<title>OnlineExam</title>
</head>
<body bgcolor="#cccccc">
<br>
<br>
<br>
<script >
    function Activate()
        {
            check_box = document.getElementById('checkbox');
            button = document.getElementById('Submit'); 
             
            if ( check_box.checked == true )
                {
                    button.disabled = false;
                }
            else
                button.disabled = true;
        }
</script>
<%
	String uid2=request.getParameter("uid1");
	String naa2=request.getParameter("naa1");
	String lnaa2=request.getParameter("lnaa1");
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
            	Statement statement = con.createStatement();
	ResultSet resultset =  statement.executeQuery("select * from instruction");
if(resultset.next())
	{%>
            <table align="center" cellspacing="0" cellpadding="0" style="height:20px">
<tr>
<td width="960">
<font color="#0033ff" size="5"><b><%=naa2%> <%=lnaa2%></b></font>
</td>
</tr>
</table>
<form action="question.jsp">

<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #0033ff;height:20px" >
<tr>
<td width="960" bgcolor="#ccccff">
<center>
<br>
<br>
<h1>Instruction</h1>
<br>
<table align="center" cellspacing="0" cellpadding="0" >
<tr>
<td width="40" valign="top" ><font color="#0033ff" size="5">1.</td>
<td style="width:200px;word-break:break-all;" ><font color="#0033ff" size="5"><%=resultset.getString(1)%> </font></td>
</tr>
<tr>
<td width="40" valign="top"><font color="#0033ff" size="5">2.</font></td>
<td style="width:200px;word-break:break-all;"><font color="#0033ff" size="5"><%=resultset.getString(2)%></font> </td>
</tr>
<tr>
<td width="40" valign="top"><font color="#0033ff" size="5">3.</font></td>
<td style="width:700px;word-break:break-all;"><font color="#0033ff" size="5"><%=resultset.getString(3)%></font> </td>
</tr>
<tr>
<td width="40" valign="top"><font color="#0033ff" size="5">4.</font></td>
<td style="width:200px;word-break:break-all;"><font color="#0033ff" size="5"><%=resultset.getString(4)%></font> </td>
</tr>
<tr>
<td width="40" valign="top"><font color="#0033ff" size="5">5.</font></td>
<td style="width:200px;word-break:break-all;"><font color="#0033ff" size="5"><%=resultset.getString(5)%></font> </td>
</tr>
</table>
<input type="hidden" name="naa3" value="<%=naa2%>">
<input type="hidden" name="lnaa3" value="<%=lnaa2%>">
<input type="hidden" name="uid3" value="<%=uid2%>">
<%}
%>
<center>
<br>
<br>
<br>
<label> 
<font color="red">I Am Agree And Start Exam  <input type="checkbox" name="checkbox" id="checkbox" value="0" onClick="Activate()"/>
</font>
<br>
<br>
<input type="submit" name="Submit" id='Submit' value="I Am Agree And Start Exam" disabled>
  </label>
<br>
<br>
<br
</center>
</form>
</body>
</html>