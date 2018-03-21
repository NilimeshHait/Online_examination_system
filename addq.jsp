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

<table align="center" cellspacing="0" cellpadding="0" style="border:10px groove #0033ff;height:20px">
<tr  height="350">
<td width="800"  bgcolor="#ccccff">
<center><b><font color="#0033ff" size="5">ADD QUESTION</font></b></center>
<font align="right"><%

					
	
					out.print("<form action='logout.jsp'>");
					
					out.print("<input type='submit' align='left' value='Logout' id='login-submit'/>");
					out.print("</form>");
					
					
					 %>
<% 
					 	if(request.getAttribute("counter")!=null){
                   Integer i=(Integer)request.getAttribute("counter");
                  		 if(i==10){
   								request.setAttribute("finished","quiz successfully submitted");
   			
   					%>
   				          <jsp:forward page="home.jsp"></jsp:forward>
   							          <% 
   							             
                   }}
                  %>
</font>

<center>
<% 
					if(request.getAttribute("save")!=null){
					out.print("<font size='5' color='red' m>");
					out.print(request.getAttribute("save"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("notSave")!=null){
					out.print("<font size='5' color='red' m>");
					out.print(request.getAttribute("notSave"));
					out.print("</font>");
					}
					
					
					%>

<form method="post" action="savequ.jsp" >
					<table>
					<tr><td>Question:</td><td><textarea rows="3" cols="50" name="question" required></textarea></td></tr>
					<tr><td>Option1:</td><td><input type="text" name="option1" required/></td></tr>	
					<tr><td>Option2:</td><td><input type="text" name="option2" required/></td></tr>
					<tr><td>Option3:</td><td><input type="text" name="option3" required/></td></tr>
					<tr><td>Option4:</td><td><input type="text" name="option4" required/></td></tr>
					<tr><td>Answer<sup><font color="red">*</font></sup>:</td><td><input type="text" name="answer" required/></td></tr>	
					<tr><td></td><td><font color="red"><sup>*</sup>Answer should be 1 for option 1,2 for option 2 and so on...</font></td></tr>			
                    <tr><td></td><td><input type="submit" value="Next"></td></tr>
                    </table>
                     </form>
</center>
<center><a href="adminhome.jsp">Back</a></center>
</td>
</tr>
</table>
<br>

</table>
</body>
</html>