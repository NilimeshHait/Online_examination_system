<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>OnlineExam</title>
<script type="text/javascript">

function required()  
{  
var empt = document.forms["form1"]["fname"].value;  
if (empt == "")  
{  
alert("First Name can't be blank");  
return false;  
}  
else   
{  
var empt = document.forms["form1"]["lname"].value;  
if (empt == "")  
{  
alert("Last name can't be blank");  
return false;  
} 
else   
{  
var empt = document.forms["form1"]["pwd"].value;  
if (empt == "")  
{  
alert("Password can't be blank");  
return false;  
} 
else   
{  
var empt = document.forms["form1"]["email"].value;  
if (empt == "")  
{  
alert("Please Enter valid Email id");  
return false;  
}  

else   
{
var email = document.forms["form1"]["email"].value; 
var validemail =/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/;
if(!(validemail.test(email)))
{
alert("Invalid email address")
form1.email.focus
return false
}

else
{
var empt = document.forms["form1"]["dob"].value;  
if (empt == "")  
{  
alert("Please Enter Date of Birth ");  
return false;  
} 

var empt = document.forms["form1"]["phone"].value; 
if (empt == "")
{  
alert("Please Enter 10 digit phone number ");  
return false;  
} 

else   
 {
return true;   
 }
}     
}
}
}
}
}
      
 </script> 
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

<td width="800" bgcolor="#ccccff">
<font align="right"><%

					
	
					out.print("<form action='logout.jsp'>");
					
					out.print("<input type='submit' align='right' value='Logout' id='login-submit'/>");
					out.print("</form>");
					
					
					 %>
</font>

<form action="view.jsp" onsubmit="return required()" name="form1">
<center><b><font color="#0033ff" size="5">REGISTER</font></b></center>
<br>
<table align="center" cellspacing="0" cellpadding="0" >
<center><%if(request.getAttribute("regerr")!=null){
out.print("<font style='color:red'>"+request.getAttribute("regerr")+"</font>");
} %>
</center>
<br>
<tr>

<td width="200" align="right">First Name:</td>
<td width="200"><input type="text" name="fname"></td>
<td width="200" align="right">Last Name:</td>
<td width="200"><input type="text" name="lname"></td
</tr>
<tr>
<td width="200" align="right">Password:</td>
<td width="200" height="50"><input type="password" length=20 name="pwd"</td>
<td width="200"  align="right">Date Of Birth:</td>
<td width="200"><input type="date" name="dob"></td>
</tr>
<tr>
<td width="200" align="right">E-mail Id:</td>
<td width="200"><input type="text" name="email"></td>
<td width="200"  align="right">Phone Number:</td>
<td width="200"><input type="text" name="phone"></td>
</tr>
<tr>
<td width="200" align="right"></td>
<td width="200" height="50"></td>
<td width="200"  align="right"></td>
<td width="200"></td>
</tr>
<tr>
<td width="200" align="right"></td>
<td width="200" align="right"><input type="submit" name="submit" value="Register"></td>
<td width="200"  align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="reset"></td>
<td width="200"></td>
</tr>
</table>
<BR>
<center><a href="adminhome.jsp">Back</a></center>
</td>
</tr>
</table>
</form>


</body>
</html>