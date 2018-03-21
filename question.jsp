<%@ page language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<script type="text/javascript">
document.onkeydown = function (e) {
    if(e.which == 40){
            return false;
    }
	if(e.which == 38){
            return false;
    }
	if(e.which == 90){
            return false;
    }
	if(e.which == 52){
            return false;
    }
}
</script> 
<script> 
function autoClick()
				{
					
					document.getElementById('linkToClick').click();
 
					} 
var tim;
       var hr=0;
        var min = 10;
        var sec = 00;
        var f = new Date();
        function f1() {
            f2();
            document.getElementById("starttime").innerHTML = "You started your Exam at " + f.getHours() + ":" + f.getMinutes();
            
          
        }
        function f2() 
	{
		
           	if (parseInt(sec) > 0)
		  {
               		 sec = parseInt(sec) - 1;
               		document.getElementById("showtime").innerHTML = "Time Left: "+hr+":"+min+":" + sec ;
               		tim = setTimeout("f2()", 1000);
           	 }
		else
          					
		
		{
               		 if (parseInt(sec) == 0 ) 
			{
										
                  		  min = parseInt(min) - 1;
				if(parseInt(min)==-1)
				{
					hr=parseInt(hr)-1;	
					if (parseInt(min) == -1 && parseInt(hr) == -1 ) 
					{
											
                        		  clearTimeout(tim);
					}
											
					else 
					{
					  
					 min=59;
                      	  		
						sec=59;
                    			document.getElementById("showtime").innerHTML = "Time Left: "+hr+":" + min + ":" + sec ;
                      			 tim = setTimeout("f2()", 1000);
                  			}
				 	
				}
				else 
				{
                      	  		 sec = 59;
                    			document.getElementById("showtime").innerHTML = "Time Left: "+hr+":" + min + ":" + sec  ;
                      			 tim = setTimeout("f2()", 1000);
                  		}
			}
               	}
               
           	
        }
    </script>
<title>OnlineExam</title>
</head>
<body onload="f1(); setTimeout('autoClick();',600000);" bgcolor="#cccccc">
<br>
<form action="result.jsp" name="forma">


<%		int t;
		int i=1;
		String UID4=request.getParameter("uid3");
		String naa4=request.getParameter("naa3");
		String lnaa4=request.getParameter("lnaa3");
		try{
Class.forName("oracle.jdbc.OracleDriver");
}

	catch(ClassNotFoundException ce){ }
try{
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nilimesh");
            	Statement statement = con.createStatement();
	ResultSet rs =  statement.executeQuery("select * from addquestion order by qid");
	%>
 


	
<table align="center" cellspacing="0" cellpadding="0">
<tr>
<td width="200">
<font color="#0033ff" size="5">
<b>
<%=naa4%> <%=lnaa4%> 
</b>
</font>
</td>
<td width="750" align="right">
<font color="#0033ff" size="5">
<div id="starttime"></div>
 
          
 
     <font color="red">       <div id="showtime"></div> </font>

</font>
</td>
</tr>
</table>
<br>

<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #0033ff;height:20px">
<tr height="450">
<td width="950" bgcolor="#ccccff">
	<div style="width:950px; height:440px; overflow:auto;">
	<% while(rs.next()){ %>
		
		 <table > 
			<TR ><TD style="width:20px;" valign="top">
			<b><%= rs.getInt(7)%>.</b>
			</TD>
			<TD style="width:760px;word-break:break-all;">
			<font size="4"><b><%=rs.getString(1)%></b></FONT>
			</TD>
			</TR>
				
</font>
		<tr>
<td></td>
	<td>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="1">

		<%=rs.getString(2)%></td>
</tr>
<tr>
<td></td>
<td>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="2">

		<%=rs.getString(3)%></td>
</tr>
<tr>
<td></td>
<td>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="3">

		<%=rs.getString(4)%></td>
</tr>
<tr>
<td></td>
<td>
		<input type="radio" name="<%="op"+String.valueOf(i)%>" value="4">
		<%=rs.getString(5)%></td>
</tr>
</table>

		<%
			i++;
		}
		con.close();
	}
	catch(SQLException se){ }
		%>
</div>
<input type="hidden" name="uid5" value="<%=UID4%> ">
<input type="hidden" name="naa5" value="<%=naa4%> ">
<input type="hidden" name="lnaa5" value="<%=lnaa4%> ">
</form>

</td>
</tr>
</table>
<br>
<br>
<center><input type="submit" value="Save" id="linkToClick" target="_blank"></center>
</form>
</body>

</html>




